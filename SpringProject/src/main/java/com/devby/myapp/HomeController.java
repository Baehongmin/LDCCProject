package com.devby.myapp;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	static String deid = "0001000200010002_robot01";
	@Autowired
	private SocketHandler socketHandler;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}

	private HashMap paser(String body) throws Exception {
		HashMap <String, String> pMap = new HashMap();
		JSONParser jsonParser = new JSONParser();
		JSONObject result = (JSONObject) jsonParser.parse(body);
		JSONObject sgn = (JSONObject) result.get("m2m:sgn");
		JSONObject nev = (JSONObject) sgn.get("nev");
		JSONObject rep = (JSONObject) nev.get("rep");
		JSONObject om = (JSONObject) nev.get("om");

		if (om.get("op").toString().equals("1")) {
			JSONObject cin = (JSONObject) rep.get("m2m:cin");
			pMap.put("ct",(String) cin.get("ct"));
			pMap.put("con",(String) cin.get("con"));
			pMap.put("OID", ((String) cin.get("cr")).split("S")[1]);
			return pMap;
		} else {
			return pMap;
		}
	}
	
	private  HashMap paser2(String body) throws Exception {
		HashMap <String, String> pMap = new HashMap();
		JSONParser jsonParser = new JSONParser();
		JSONObject result = (JSONObject) jsonParser.parse(body);
		JSONObject cin = (JSONObject) result.get("m2m:cin");
		pMap.put("ct", (String) cin.get("ct"));
		pMap.put("con", (String) cin.get("con"));
		return pMap;
	}

	
	private static String paser1(String body) throws Exception {
		JSONParser jsonParser = new JSONParser();
		JSONObject result = (JSONObject) jsonParser.parse(body);
		// JSONObject sgn = (JSONObject) result.get("m2m:cin");
		return (String) result.get("device_id");
	}
	private static String paser3(String body) throws Exception {
		JSONParser jsonParser = new JSONParser();
		JSONObject result = (JSONObject) jsonParser.parse(body);
		return (String) result.get("Ukey");
	}

//	@RequestMapping(value = "/dashboard", method = RequestMethod.POST)
//	@ResponseBody
//	public String dashboard(@RequestBody String body, Model model) throws Exception {
//		body = paser1(body);
//		System.out.println("body : " + body);
//		// socketHandler.sendMessage(body);
//		// SocketHandler.SetMe(body);
//		return body;
//
//	}

	@SuppressWarnings("unlikely-arg-type")
	@RequestMapping(value = "/onem2m/data", method = RequestMethod.POST)
	@ResponseBody
	public Object getData(@RequestBody String body, Model model) throws Exception {
		// System.out.println(request.getQueryString());
		// System.out.println(request.getParameter("devive_id"));
		// System.out.println(request.getAttributeNames());
		// System.out.println(request.getParameterNames().asIterator().next().toString());
		// System.out.println(body.split("=")[1]);
		HashMap<String, Object> data = new HashMap<String, Object>();
		String Device = paser1(body);
		deid = Device;
		String Ukey = "bdd60bac-6e36-a0b9-cab4-5f2ec02bd0c7";
		//String URL = "http://10.2.1.8:12080/~/charlot/base";
		String URL = "http://127.0.0.1:8080/~/charlot/base";
		//System.out.println(body); 
		Map divA = ReadinitDatas(URL,"bottomrfid",Device, Ukey);
		Map divB = ReadinitDatas(URL, "toprfid",Device, Ukey);
		Map divC = ReadinitDatas(URL, "linetracer",Device, Ukey);
		Map divD = ReadinitDatas(URL, "casystem",Device, Ukey);
		Map divE = ReadinitDatas(URL, "obstacle",Device, Ukey);
		Map divF = ReadinitDatas(URL, "battery",Device, Ukey);
		Map divG = ReadinitDatas(URL, "power",Device, Ukey);
		Map divH = ReadinitDatas(URL, "running",Device, Ukey);
		
		//SocketHandler.SetMe(A);
		data.put("Brfid",divA);
		data.put("Trfid",divB);
		data.put("Lerror",divC);
		data.put("Ccheck",divD);
		data.put("Fdetec",divE);
		data.put("Bettery",divF);
		data.put("AGVonf",divG);
		data.put("AGVactiva",divH);
		//System.out.println(((HashMap)data.get("Brfid")).get("con"));
		//String device_id = body;
		return data;

	}

	/**
	 * 
	 * @param iotPlatformUrl
	 *            : iot플랫폼 주소
	 * @param device_id
	 *            : OID(디바이스아이디)
	 * @param cmdName
	 *            : 명령키 (ex..switch)
	 * @param cmd
	 *            : 명령값 (ex..0 or 1, ON or OFF, on or off ..etc)
	 * @param cmdName1
	 * @param cmd1
	 * @param dKey
	 *            : 디바이스인증키
	 * @throws ParseException
	 * @throws IOException
	 */
	public void sendMgmt(String iotPlatformUrl, String device_id, String cmdName, String cmd, String cmdName1,
			String cmd1, String dKey) throws ParseException, IOException {
		String resourceUrl = iotPlatformUrl + "/controller-" + device_id;
		System.out.println("iotPlatformResourceUrl : " + resourceUrl);
		System.out.println("OID : " + device_id);
		System.out.println("commandName : " + cmdName);
		System.out.println("command : " + cmd);
		CloseableHttpClient httpclient = HttpClients.createDefault();
		try {
			HttpPut httpPut = new HttpPut(resourceUrl);
			httpPut.setHeader("X-M2M-RI", "RQI0001"); //
			httpPut.setHeader("X-M2M-Origin", "/S" + device_id); //
			httpPut.setHeader("Accept", "application/json");
			httpPut.setHeader("Authorization", "Bearer " + dKey);
			httpPut.setHeader("Content-Type", "application/vnd.onem2m-res+json");
			String body = "{ \"m2m:mgc\": {\"cmt\": 4,\"exra\": { \"any\":[{\"nm\" :\"" + cmdName + "\", \"val\" : \""
					+ cmd + "\"} ]},\"exm\" : 1,\"exe\":true,\"pexinc\":false}}";
			System.out.println(body);
			httpPut.setEntity(new StringEntity(body));

			CloseableHttpResponse res = httpclient.execute(httpPut);

			try {
				if (res.getStatusLine().getStatusCode() == 200) {
					org.apache.http.HttpEntity entity = (org.apache.http.HttpEntity) res.getEntity();
					System.out.println(EntityUtils.toString(entity));
				} else {
					System.out.println("sendMgmt eerr");
				}
			} finally {
				res.close();
			}
		} finally {
			httpclient.close();
		}

	}

	
	/**
	 * 
	 * @param iotPlatformUrl
	 *            : iot플랫폼 주소
	 * @param device_id
	 *            : OID(디바이스아이디)
	 * @param cmdName1
	 * @param cmd1
	 * @param dKey
	 *            : 디바이스인증키
	 * @throws ParseException
	 * @throws IOException
	 */
	public HashMap ReadinitDatas(String iotPlatform_url, String container_id,String device_id, String UKey) throws ParseException, IOException {
		HashMap returnMap = new HashMap();
		String resourceUrl = iotPlatform_url + "/S" + device_id + "/" +container_id+"/la";
		System.out.println("iotPlatformResourceUrl : " + resourceUrl);
		System.out.println("OID : " + device_id);
		CloseableHttpClient httpclient = HttpClients.createDefault();
		try {
			HttpGet httpGet = new HttpGet(resourceUrl);
			httpGet.setHeader("X-M2M-RI", "RQI0001"); //
			httpGet.setHeader("X-M2M-Origin", "/S" + device_id); //
			httpGet.setHeader("Accept", "application/json");
			httpGet.setHeader("Authorization", "Bearer " + UKey);

			CloseableHttpResponse res = httpclient.execute(httpGet);
			try {
				if (res.getStatusLine().getStatusCode() == 200) {
					org.apache.http.HttpEntity entity = (org.apache.http.HttpEntity) res.getEntity();
					String reasonPhrase = EntityUtils.toString(entity);
					System.out.println("CSE Instance Json : " + reasonPhrase);
					
					try {
						//System.out.println(reasonPhrase);
						returnMap = paser2(reasonPhrase);
						returnMap.put("name", container_id);
						//String init_tem_value = reasonPhrase;
						
						return returnMap;
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
				} else {
					System.out.println("Read Init Datas eerr");
				}
			} finally {
				res.close();
			}
		} finally {
			httpclient.close();
		}
		return returnMap; 
	}
	 @RequestMapping(value = "/dashboard/{container_id}", method = RequestMethod.POST)
	 @ResponseBody
	 public String realTime(@PathVariable String container_id, @RequestBody String body, Model model) throws
	 Exception {
		 
		HashMap <String,String> hmbody = new HashMap();
		hmbody = paser(body);
		hmbody.put("name", container_id);
	 System.out.println("cotainer_id : " + container_id);
	 System.out.println("body : " + (String)hmbody.get("con"));
	 //System.out.println();
	 //System.out.println(hmbody.get(container_id));
	 //String result = container_id+"|"+body;
	 //socketHandler.sendMessage(result);
	 //socketHandler.SetMe(body);
	 JSONObject json = new JSONObject();
	 json.putAll( hmbody );
	 body = json.toString();
	 System.out.println(body);
	 //socketHandler.SetMe(body);
	 //socketHandler.sendMessage(body);
	 if(deid.equals((String)hmbody.get("OID"))) {
	 socketHandler.sendMessage(body);
	 }
	 
	 return body;

	 }
	 
	 @RequestMapping(value = "/switchOnoff", method = RequestMethod.POST)
	 @ResponseBody
	 public void switchOnoff(@RequestBody String body, Model model) throws
	 Exception {
		JSONParser jsonParser = new JSONParser();
		JSONObject result = (JSONObject) jsonParser.parse(body);
		String Device_id = (String) result.get("device_id");
		String cmd = (String) result.get("cmd");
		//System.out.println(Device_id);
		//System.out.println(cmd);
		if(Device_id=="0001000200010002_robot01") {
		sendMgmt("http://127.0.0.1:8080/~/charlot/base", Device_id, "runswitch", cmd, null,null, "ad51a165-5da9-d822-2539-1872f585a8de");
		//sendMgmt("http://10.2.1.8:12080/~/charlot/base", Device_id, "runswitch", cmd, null,null, "ad51a165-5da9-d822-2539-1872f585a8de");
		}
		if(Device_id=="0001000200010002_robot02") {
		sendMgmt("http://127.0.0.1:8080/~/charlot/base", Device_id, "runswitch", cmd, null,null, "f6b509c1-9586-499a-db76-0d35a4351f84");	
		//sendMgmt("http://10.2.1.8:12080/~/charlot/base", Device_id, "runswitch", cmd, null,null, "f6b509c1-9586-499a-db76-0d35a4351f84");
		}
	 }
}

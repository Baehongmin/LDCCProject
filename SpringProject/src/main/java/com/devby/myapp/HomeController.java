package com.devby.myapp;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;
import java.util.Locale;

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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.apache.http.client.methods.CloseableHttpResponse;
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

	private static String paser(String body) throws Exception {
		JSONParser jsonParser = new JSONParser();
		JSONObject result = (JSONObject) jsonParser.parse(body);
		JSONObject sgn = (JSONObject) result.get("m2m:sgn");
		JSONObject nev = (JSONObject) sgn.get("nev");
		JSONObject rep = (JSONObject) nev.get("rep");
		JSONObject om = (JSONObject) nev.get("om");
		if (om.get("op").toString().equals("1")) {
			JSONObject cin = (JSONObject) rep.get("m2m:cin");
			return (String) cin.get("con");
		} else {
			return "error";
		}
	}

	private static String paser1(String body) throws Exception {
		JSONParser jsonParser = new JSONParser();
		JSONObject result = (JSONObject) jsonParser.parse(body);
		JSONObject sgn = (JSONObject) result.get("m2m:cin");
		return (String) sgn.get("con");
	}

	@RequestMapping(value = "/dashboard", method = RequestMethod.POST)
	@ResponseBody
	public String dashboard(@RequestBody String body, Model model) throws Exception {
		body = paser1(body);
		System.out.println("body : " + body);
		// socketHandler.sendMessage(body);
		// SocketHandler.SetMe(body);
		return body;

	}

	@RequestMapping(value = "/onem2m/data", method = RequestMethod.POST)
	@ResponseBody
	public String getData(@RequestBody String body, Model model) throws Exception {
		//System.out.println(request.getQueryString());
		//System.out.println(request.getParameter("devive_id"));
		//System.out.println(request.getAttributeNames());
		//System.out.println(request.getParameterNames().asIterator().next().toString());
		System.out.println(body.split("=")[1]);
		System.out.println(body);
		String device_id = body.split("=")[1];
		
		
		return device_id;

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
	
	

	// @RequestMapping(value = "/dashboard", method = RequestMethod.POST)
	// @ResponseBody
	// public String sandonoff(@RequestBody String body, Model model) throws
	// Exception {
	// body = paser(body);
	// System.out.println("body : " + body);
	// socketHandler.sendMessage(body);
	// SocketHandler.SetMe(body);
	// return body;

	// }
}

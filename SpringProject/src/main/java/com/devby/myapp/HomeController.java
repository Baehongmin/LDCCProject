package com.devby.myapp;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

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
import org.springframework.web.bind.annotation.ResponseBody;

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
		
		model.addAttribute("serverTime", formattedDate );
		
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
	
	@RequestMapping(value = "/dashboard", method = RequestMethod.POST)
	@ResponseBody
	public String dashboard(@RequestBody String body, Model model) throws Exception {
		body = paser(body);
		System.out.println("body : " + body);
		//socketHandler.sendMessage(body);
		SocketHandler.SetMe(body);
		return body;
		
	}
	
//	@RequestMapping(value = "/dashboard", method = RequestMethod.POST)
//	@ResponseBody
//	public String sandonoff(@RequestBody String body, Model model) throws Exception {
		//body = paser(body);
		//System.out.println("body : " + body);
		//socketHandler.sendMessage(body);
		//SocketHandler.SetMe(body);
//		return body;
		
//	}
}

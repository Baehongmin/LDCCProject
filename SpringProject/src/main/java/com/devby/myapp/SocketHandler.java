package com.devby.myapp;

import java.util.HashMap;
import java.util.HashSet;

import java.util.Set;

import org.apache.log4j.LogManager;

import org.apache.log4j.Logger;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.socket.CloseStatus;

import org.springframework.web.socket.TextMessage;

import org.springframework.web.socket.WebSocketMessage;

import org.springframework.web.socket.WebSocketSession;

import org.springframework.web.socket.handler.TextWebSocketHandler;

public class SocketHandler extends TextWebSocketHandler implements InitializingBean {

	private final Logger logger = LogManager.getLogger(getClass());

	private Set<WebSocketSession> sessionSet = new HashSet<WebSocketSession>();
	private static String K = "";
	public SocketHandler() {
		
		super();

		this.logger.info("create SocketHandler instance!");

	}

	
	@Override

	public void afterConnectionClosed(WebSocketSession session,

			CloseStatus status) throws Exception {

		super.afterConnectionClosed(session, status);
 
		sessionSet.remove(session);

		this.logger.info("remove session!");

	}

	@Override

	public void afterConnectionEstablished(WebSocketSession session)

			throws Exception {

		super.afterConnectionEstablished(session);

		sessionSet.add(session);

		this.logger.info("add session!");

	}

	@Override

	public void handleMessage(WebSocketSession session,

			WebSocketMessage<?> message) throws Exception {

		super.handleMessage(session, message);

		this.logger.info("receive message:" + message.toString());

	}

	@Override

	public void handleTransportError(WebSocketSession session,

			Throwable exception) throws Exception {

		this.logger.error("web socket error!", exception);

	}

	@Override

	public boolean supportsPartialMessages() {

		this.logger.info("call method!");

		return super.supportsPartialMessages();

	}

	public void sendMessage(String message) {

		for (WebSocketSession session : this.sessionSet) {

			if (session.isOpen()) {

				try {
                    //System.out.println("sssss : " +message);
					session.sendMessage(new TextMessage(message));

				} catch (Exception ignored) {

					this.logger.error("fail to send message!", ignored);

				}

			}

		}

	}
	public static void SetMe(String A) {
		K=A;
	}
	
	@Override

	public void afterPropertiesSet() throws Exception {

		Thread thread = new Thread() {

			int i = 0;

			@Override

			public void run() {
						//sendMessage("send message index " + K);
						sendMessage(K);
					}

		};

		thread.start();

	}
	
}

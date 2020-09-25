package com.mvc.sp.controller.common;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class URIController {
	private static final Logger logger = LoggerFactory.getLogger(URIController.class);
	
	@GetMapping("/views/**") //와일드카드?......ㅇ_ㅇ..제너릭...?........검색해보깅_ㅇ_ㅇ_ㅇ_ㅇ_ㅇ_ㅇ
	public String goPage(HttpServletRequest req) {
		String uri = req.getRequestURI();
		logger.info("uri=>{}", uri);
		return uri.substring(7);
	}
}



package com.mvc.sp.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mvc.sp.service.CommentBoardService;
import com.mvc.sp.vo.CommentBoardVO;

@Controller
public class CommentBoardController {
	@Autowired
	private CommentBoardService cbService;
	private static final Logger logger = LoggerFactory.getLogger(CommentBoardController.class);


	@PostMapping("/comment/write")
	public String doWrite(Model model, CommentBoardVO cb) {
		cbService.insertCommentBoard(model, cb);
		return "/comment/write";
	}
	
	@GetMapping("/cms")
	public @ResponseBody List<CommentBoardVO> getCMList(CommentBoardVO cb) {
		return cbService.selectCommentBoard(cb);  
	}
	
	@GetMapping("/cm")
	public @ResponseBody CommentBoardVO getCM(CommentBoardVO cm) {
		logger.info("cm => {}" , cm);
		return null;
	}

	@PostMapping("/comment/login")
	public String doLogin(Model model, CommentBoardVO cb) {
		cbService.doLogin(model, cb);

		return "/comment/login"; 
	}

}


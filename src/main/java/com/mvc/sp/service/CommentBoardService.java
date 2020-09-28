package com.mvc.sp.service;

import java.util.List;

import org.springframework.ui.Model;

import com.mvc.sp.vo.CommentBoardVO;

public interface CommentBoardService {
	int insertCommentBoard(Model model,CommentBoardVO cb);
	int updateCommentBoard(Model model,CommentBoardVO cb);
	int deleteCommentBoard(Model model,CommentBoardVO cb);
	List<CommentBoardVO> selectCommentBoard(CommentBoardVO cb);
	CommentBoardVO doLogin(Model model,CommentBoardVO cb);
}

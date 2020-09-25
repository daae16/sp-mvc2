package com.mvc.sp.dao;

import java.util.List;

import com.mvc.sp.vo.CommentBoardVO;

public interface CommentBoardDAO {
	int insertCommentBoard(CommentBoardVO cb);
	List<CommentBoardVO> selectCommentBoard(CommentBoardVO cb);
	CommentBoardVO doLogin(CommentBoardVO cb);
}

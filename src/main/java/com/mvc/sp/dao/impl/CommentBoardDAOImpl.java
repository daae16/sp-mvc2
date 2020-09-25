package com.mvc.sp.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.sp.dao.CommentBoardDAO;
import com.mvc.sp.vo.CommentBoardVO;

@Repository
public class CommentBoardDAOImpl implements CommentBoardDAO {
	@Autowired
	private SqlSessionFactory ssf;

	public int insertCommentBoard(CommentBoardVO cb) {
		try (SqlSession ss = ssf.openSession()) {
			return ss.insert("CommentBoard.insertComment", cb);
		}
	}

	public List<CommentBoardVO> selectCommentBoard(CommentBoardVO cb) {
		try (SqlSession ss = ssf.openSession()) {
			return ss.selectList("CommentBoard.selectComment", cb);
		}
	}

	public CommentBoardVO doLogin(CommentBoardVO cb) {
		try(SqlSession ss = ssf.openSession()){
			return ss.selectOne("CommentBoard.doLogin", cb);
		}
	}

}

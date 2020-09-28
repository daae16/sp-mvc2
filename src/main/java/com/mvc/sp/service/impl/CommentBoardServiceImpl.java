package com.mvc.sp.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.mvc.sp.dao.CommentBoardDAO;
import com.mvc.sp.service.CommentBoardService;
import com.mvc.sp.vo.CommentBoardVO;

@Service
public class CommentBoardServiceImpl implements CommentBoardService {

	@Autowired
	private CommentBoardDAO cbdao;

	public int insertCommentBoard(Model model, CommentBoardVO cb) {
		int cnt = cbdao.insertCommentBoard(cb);
		if (cnt == 1) {
			model.addAttribute("msgwrite", "작성완료");
		} else {
			model.addAttribute("msgwrite", "작성실패");
		}
		return cnt;
	}
	
	@Override
	public int updateCommentBoard(Model model, CommentBoardVO cb) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteCommentBoard(Model model, CommentBoardVO cb) {
		// TODO Auto-generated method stub
		return 0;
	}

	

	public List<CommentBoardVO> selectCommentBoard(CommentBoardVO cb) {
		List<CommentBoardVO> cbList = new ArrayList<CommentBoardVO>();
		cbList = cbdao.selectCommentBoard(cb);

		return cbList;
	}

	public CommentBoardVO doLogin(Model model, CommentBoardVO cb) {
		CommentBoardVO cbVO = cbdao.doLogin(cb);
		if (cbVO != null) {
			if (cb.getCmTitle().equals((cbVO.getCmTitle()))) {
				if (cb.getMiNum() == (cbVO.getMiNum())) {
					model.addAttribute("msgLogin", "로그인되셨습니다");
				}
			}
		} else {
			model.addAttribute("msgLogin", "정보를 다시 확인해주세요");
		}
		return cb;
	}






	
}

//package com.mvc.sp;
//
//import static org.junit.Assert.assertNull;
//
//import org.apache.commons.dbcp2.BasicDataSource;
//import org.apache.ibatis.session.SqlSessionFactory;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//import org.springframework.ui.Model;
//
//import com.mvc.sp.dao.CommentBoardDAO;
//import com.mvc.sp.service.CommentBoardService;
//import com.mvc.sp.vo.CommentBoardVO;
//
//
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = "file:src\\main\\webapp\\WEB-INF\\spring\\root-context.xml")
//public class MVCTest {
//	@Autowired
//	private CommentBoardService cbService;
//	@Autowired
//	private CommentBoardDAO cbdao;
//	private CommentBoardVO cb;
//	private Model model;
//	@Autowired
//	private BasicDataSource bds;
//	@Autowired
//	private SqlSessionFactory ssf;
//	
//	@Test
//	public void test() {
//		assertNull(cbService.selectCommentBoard(null, cb));
//	}
//
//}

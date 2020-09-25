package com.mvc.sp.vo;

import org.apache.ibatis.type.Alias;

import lombok.Data;


@Data
public class CommentBoardVO {
private int cmNum;
private String cmTitle;
private String cmContent;
private int miNum;
private String credat;
private String cretim;
private String moddat;
private String modtim;
private int cmCnt;
}
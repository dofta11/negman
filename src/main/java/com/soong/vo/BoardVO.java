package com.soong.vo;

import java.util.Date;

public class BoardVO {
	private int board_srl;
	private String title;
	private String Contents;
	private String reg_id;
	private Date reg_dt;
	private int hit;
	public int getBoard_srl() {
		return board_srl;
	}
	public void setBoard_srl(int board_srl) {
		this.board_srl = board_srl;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return Contents;
	}
	public void setContents(String contents) {
		Contents = contents;
	}
	public String getReg_id() {
		return reg_id;
	}
	public void setReg_id(String reg_id) {
		this.reg_id = reg_id;
	}
	public Date getReg_dt() {
		return reg_dt;
	}
	public void setReg_dt(Date reg_dt) {
		this.reg_dt = reg_dt;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	
}

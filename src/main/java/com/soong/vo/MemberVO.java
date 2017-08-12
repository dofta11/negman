package com.soong.vo;

import java.sql.Timestamp;

public class MemberVO {
    private int user_no;
    private String user_id;
    private String user_nm;
    private String email;
    private String password;
    private Timestamp reg_dt;
    private Timestamp update_dt;

    public int getUser_no() {
        return user_no;
    }

    public void setUser_no(int user_no) {
        this.user_no = user_no;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getUser_nm() {
        return user_nm;
    }

    public void setUser_nm(String user_nm) {
        this.user_nm = user_nm;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Timestamp getReg_dt() {
        return reg_dt;
    }

    public void setReg_dt(Timestamp reg_dt) {
        this.reg_dt = reg_dt;
    }

    public Timestamp getUpdate_dt() {
        return update_dt;
    }

    public void setUpdate_dt(Timestamp update_dt) {
        this.update_dt = update_dt;
    }
}

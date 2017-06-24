package com.soong.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class MainController {
	
	//���� git Test (���� �ҽ��� �����ϸ�, ���Ͽ� ǥ�ð���.  (>) <-�̷���
	//���� ����������,  ���常�ϸ� ������ �����ǳ�.
	//��ư �̷��� ������ �����Ǿ���.
	
	//0�ܰ�.  git pull origin master : �ҽ��ٿ�ޱ�,   origin master �̰� ���߿� �˷���, �ƴϸ� ã�ƺ��� �ݹ� �˰Եɰ���
	//1�ܰ�.  git add ���ϸ� or git add .   ���ϸ� ������� 
	//         <���� git bash â ���   ��ɾ���ϴ°� ���ο� ����ǰ����� �װ� �����ص���
	//2�ܰ�.  git commit -m "�ʰ� ������ ���� ���"   ex)  git commit -m "���� ù Push"
	//3�ܰ�.  git push origin master  : �̰� �ҽ��� �ݿ��ϴ°�
	// ��.
	
	//�̰� �����ϴ°� �����ٰ�.  �����Ѱ� �ҽ������ž�..  ���� �ҽ��� �ֽŻ��¶� �ٿ������ ���ٴ°�.
	
	//�̰� Ŀ��â�̾�.    �� Ŀ��â����  1,2�ܰ� ���Ҽ�����  Add�� Ŀ��.
	// Add�� ���ĸ�.  �̰� �������¾�.   unstaged Changes �� �����������ž� �ʰ� ����������.
	// ���Ÿ� �Ʒ��� ���°�   git add MainController.java  �� �Ѱž�.
	// �̰� Add
	// �׸��� ���� Ŀ��. 
	
	// ���� Ŀ�� and push OR commit  �ε� Ŀ�԰� Ǫ�ø� ���ÿ� �ѹ��� �Ұų�, Ŀ�Ը����Ұų� ��������.
	// ���� Ŀ��Ǫ�� ������. ��� �����ĸ� ���ݳ��� ��� ���ϼ����ϰ����ڳ� ������ϰ� �װ� ���â��ž�. �ٽ��غ���.
	// ���⼭ �����ϸ� unstage�� ���ϻ���ž�
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public ModelAndView main(){
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("main/main");
		return mav;
	}
	
	@RequestMapping("/helloworld")
	public ModelAndView helloworld(){
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("main/helloworld");
		return mav;
	}
}

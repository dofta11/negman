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

package com.soong.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class MainController {
	
	//웅이 git Test (봐바 소스를 수정하면, 파일에 표시가되.  (>) <-이런거
	//지금 설정때문에,  저장만하면 서버가 재실행되네.
	//암튼 이렇게 파일이 수정되었어.
	
	//0단계.  git pull origin master : 소스다운받기,   origin master 이건 나중에 알려줌, 아니면 찾아보면 금방 알게될거임
	//1단계.  git add 파일명 or git add .   점하면 모든파일 
	//         <원래 git bash 창 열어서   명령어로하는게 공부에 도움되겠지만 그건 차차해도되
	//2단계.  git commit -m "너가 수정한 내용 요약"   ex)  git commit -m "웅이 첫 Push"
	//3단계.  git push origin master  : 이게 소스를 반영하는거
	// 끝.
	
	//이걸 툴로하는걸 보여줄게.  지금한게 소스받은거야..  지금 소스가 최신상태라 다운받을게 없다는거.
	
	
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

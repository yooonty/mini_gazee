package com.multi.gazee;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller // 스프링에서 제어하는 역할로 등록!
public class ProductController {

	@Autowired // 만들어둔 싱글톤 주소 넣어줌.
	ProductDAO dao; // 전역변수(글로벌 변수)
	
	@RequestMapping("best")
	public void bset(Model model) {
		List<ProductVO> list = dao.best();
		model.addAttribute("list", list);
	}
	
	@RequestMapping("list")
	public void list(Model model) {
		List<ProductVO> list = dao.list();
		model.addAttribute("list", list);
	}
	
	@RequestMapping("search")
	public void search(String search, Model model) {
		List<ProductVO> list = dao.search(search);
		model.addAttribute("list", list);
	}
	
}

package com.multi.gazee;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

//스프링에 dao는 싱글톤으로 하나만 만들어서 사용할게!라고 설정해야함.
//2가지 방법으로 할 수 있음.
//어노테이션(표시)방법, xml방법
@Component
public class ProductDAO { // DAO는 테이블 당 하나씩
	
	//MyBatis부품!
	@Autowired
	SqlSessionTemplate my;
	
	public void insert(ProductVO bag) {
		my.insert("member.create", bag);
	}
	
	public void delete(int no) {
		my.delete("member.delete", no);
	}
	
	public void update(ProductVO bag) {
		my.delete("member.update", bag);
	}
	
	public ProductVO one(String id) {
		ProductVO vo = my.selectOne("member.one", id);
		System.out.println(vo);
		return vo;
	}
	
	public List<ProductVO> best() {
		List<ProductVO> list = my.selectList("product.best");
		return list;
	}
	
	public List<ProductVO> list() {
		List<ProductVO> list = my.selectList("product.all");
		return list;
	}
	
}

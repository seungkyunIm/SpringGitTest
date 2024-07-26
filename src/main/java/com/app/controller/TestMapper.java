package com.app.controller;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface TestMapper {

	@Select("slect 1 as no")
	public int testDB();
	
}

package com.gethin.test;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.gethin.mapper.RoleMapper;
import com.gethin.mapper.RoleMapper1;
import com.gethin.po.Role;


public class Main {
	public static void main(String[] args) {
		String resource="mybatis-config.xml";
		InputStream inputStream=null;
		try {
			inputStream = Resources.getResourceAsStream(resource);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		SqlSessionFactory sqlSessionFactory=null;
		sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
		SqlSession sqlSession=null;
		try {
			sqlSession=sqlSessionFactory.openSession();
			RoleMapper1 roleMapper1=sqlSession.getMapper(RoleMapper1.class);
			RoleMapper roleMapper=sqlSession.getMapper(RoleMapper.class);
			Role role=roleMapper.getRole(1L);
			System.out.println(role.getId()+":"+role.getRoleName()+":"+role.getNote());
			Role role1=new Role();
			role1.setRoleName("sinan");
			role1.setNote("insert mapper class test");
			roleMapper.insertRole(role1);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			sqlSession.rollback();
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
	}
}

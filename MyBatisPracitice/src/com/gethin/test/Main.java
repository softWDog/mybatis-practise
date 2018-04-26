package com.gethin.test;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.tools.ant.types.resources.selectors.Date;

import com.gethin.mapper.LectureMapper;
import com.gethin.mapper.RoleMapper;
import com.gethin.mapper.RoleMapper1;
import com.gethin.mapper.StudentLectureMapper;
import com.gethin.mapper.StudentMapper;
import com.gethin.mapper.UserMapper;
import com.gethin.po.Lecture;
import com.gethin.po.Role;
import com.gethin.po.Sex;
import com.gethin.po.Student;
import com.gethin.po.StudentLecture;
import com.gethin.po.User;


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
//			RoleMapper roleMapper=sqlSession.getMapper(RoleMapper.class);
//			Role role=roleMapper.getRole(1L);
//			System.out.println(role.getId()+":"+role.getRoleName()+":"+role.getNote());
//			RoleMapper1 roleMapper1=sqlSession.getMapper(RoleMapper1.class);
//			Role role1=new Role();
//			role1.setRoleName("sinan");
//			role1.setNote("insert mapper class test");
//			roleMapper.insertRole(role1);
//			Role role2= roleMapper.findRole("sinan");
//			System.out.println(role2.getId()+":"+role2.getRoleName());
//			UserMapper userMapper=sqlSession.getMapper(UserMapper.class);
//			User user=new User();
//			user.setUserName("zhangsan3");
//			user.setCnname("张三");
//			user.setMobile("13973150133");
//			user.setEmail("326736765@qq.com");
//			user.setSex(Sex.MALE);
//			user.setNote("测试");
//			user.setBirthday("19920301");
//			userMapper.insertUser(user);
//			System.out.println(user.getId()+":"+user.getUserName()+":"+user.getSex());
//			User user1=userMapper.getUser(1L);
//			System.out.println(user1.getUserName()+":"+user1.getSex());
//			Map<String, String> params=new HashMap<>();
//			params.put("name", "zhangsan1");
//			User user2=userMapper.getUserByMap(params);
//			System.out.println("user:"+user2.getUserName()+":"+user2.getSex());
//			LectureMapper lectureMapper=sqlSession.getMapper(LectureMapper.class);
//			Lecture lecture=lectureMapper.getLecture(2);
//			System.out.println(lecture);
//			
			
//			
//			StudentLectureMapper studentLectureMapper=sqlSession.getMapper(StudentLectureMapper.class);
//			StudentLecture studentLecture=studentLectureMapper.findStudentLectureByStuId(1);
//			System.out.println(studentLecture);
////			
//			StudentMapper studentMapper=sqlSession.getMapper(StudentMapper.class);
//			Student student=studentMapper.getStudent(1);
//			System.out.println(student.getStudentSelfcard());
			
			System.out.println("technology corporation limited".toUpperCase());
//			System.out.println(student.getId()+","+student.getStudentSelfcard().toString()+":"+student.getStudentLectureList().toString());
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

package com.gethin.mapper;

import com.gethin.po.StudentLecture;

import java.util.List;

public interface StudentLectureMapper {
	public List<StudentLecture> findStudentLectureByStuId(int id);
}

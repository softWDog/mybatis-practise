package com.gethin.mapper;

import com.gethin.po.Lecture;

import java.util.Map;

public interface LectureMapper {
public Lecture getLecture(int id);
public int saveLecture(Lecture lecture);
public int updateLecture(Lecture lecture);
public int deleteLecture(int id);
}

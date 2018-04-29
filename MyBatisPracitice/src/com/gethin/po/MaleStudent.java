package com.gethin.po;

import java.util.List;

public class MaleStudent extends Student {
    private StudentHealthMale studentHealthMale = null;

    public StudentHealthMale getStudentHealthMale() {
        return studentHealthMale;
    }

    public void setStudentHealthMale(StudentHealthMale studentHealthMale) {
        this.studentHealthMale = studentHealthMale;
    }
}

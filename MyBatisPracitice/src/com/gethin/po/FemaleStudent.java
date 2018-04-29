package com.gethin.po;


public class FemaleStudent extends Student {
    private StudentHealthFemale studentHealthFemale= null;

    public StudentHealthFemale getStudentHealthFemale() {
        return studentHealthFemale;
    }

    public void setStudentHealthFemale(StudentHealthFemale studentHealthFemale) {
        this.studentHealthFemale = studentHealthFemale;
    }
}

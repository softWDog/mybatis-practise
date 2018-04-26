package com.gethin.po;

import java.util.Date;

public class StudentSelfcard {
	private int id;
	private int studentId;
	private String native_;
	private Date issueDate;
	private Date endDate;
	private String note;
	public int getId() {
		return id;
	}
	@Override
	public String toString() {
		return "StudentSelfcard [id=" + id + ", studentId=" + studentId + ", native_=" + native_ + ", issueDate="
				+ issueDate + ", endDate=" + endDate + ", note=" + note + "]";
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public String getNative_() {
		return native_;
	}
	public void setNative_(String native_) {
		this.native_ = native_;
	}
	public Date getIssueDate() {
		return issueDate;
	}
	public void setIssueDate(Date issueDate) {
		this.issueDate = issueDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
}

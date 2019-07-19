package com.college.student;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Student {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String Name;
	private String SchoolYr;
	private String Campus;
	private String EntryDate;
	private String Grade;
	
	protected Student() {
		
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getSchoolYr() {
		return SchoolYr;
	}
	public void setSchoolYr(String schoolYr) {
		SchoolYr = schoolYr;
	}
	public String getCampus() {
		return Campus;
	}
	public void setCampus(String campus) {
		Campus = campus;
	}
	public String getEntryDate() {
		return EntryDate;
	}
	public void setEntryDate(String entryDate) {
		EntryDate = entryDate;
	}
	public String getGrade() {
		return Grade;
	}
	public void setGrade(String grade) {
		Grade = grade;
	}
	

}

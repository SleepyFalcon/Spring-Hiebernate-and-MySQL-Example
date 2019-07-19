package com.college.student;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
public class StudentService {
	@Autowired 
	private StudentRepository stud;
	
	
	public void save(Student student) {
		stud.save(student);
	}
	
	public List<Student> listAll() {
		return (List<Student>) stud.findAll();
	}
	
	public Student get(int id) {
		return stud.findById(id).get();
	}
	
	public void delete(int id) {
		stud.deleteById(id);
	}
	
	public List<Student> search(String keyword) {
		return stud.search(keyword);
	}
	
}

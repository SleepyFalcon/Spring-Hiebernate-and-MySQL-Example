package com.college.student;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;


public interface StudentRepository extends CrudRepository<Student, Integer> {
	
	@Query(value = "SELECT c FROM Student c WHERE c.Name LIKE '%' || :whatever || '%'"
			+ " OR c.SchoolYr LIKE '%' || :whatever || '%'"
			+ " OR c.EntryDate LIKE '%' || :whatever || '%'"
			+ " OR c.Grade LIKE '%' || :whatever || '%'"
			+ " OR c.Campus LIKE '%' || :whatever || '%'")
	public List<Student> search(@Param("whatever") String whatever);
	
}

package com.mycom.myapp.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.mycom.myapp.model.EmployeeVO;

@Repository
public class EmployeeDaoImpl implements EmployeeDao{

	@Override
	public List<EmployeeVO> getAllEmployees() {
		List<EmployeeVO> employees = new ArrayList<EmployeeVO>();
		
		EmployeeVO vo = new EmployeeVO();
		vo.setId(1);
		vo.setFirstName("Lokesh");
		vo.setLastName("Gupta");
		employees.add(vo);
		
		EmployeeVO vo1 = new EmployeeVO();
		vo1.setId(2);
		vo1.setFirstName("Raj");
		vo1.setLastName("Kishore");
		employees.add(vo1);
		
		EmployeeVO vo2 = new EmployeeVO();
		vo2.setId(3);
		vo2.setFirstName("Kim");
		vo2.setLastName("Handong");
		employees.add(vo2);
		
		return employees;
	}
}

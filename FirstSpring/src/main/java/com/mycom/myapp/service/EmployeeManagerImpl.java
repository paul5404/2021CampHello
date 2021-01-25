package com.mycom.myapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycom.myapp.dao.EmployeeDao;
import com.mycom.myapp.model.EmployeeVO;

@Service
public class EmployeeManagerImpl implements EmployeeManager{
	
	@Autowired
	EmployeeDao dao;
	
	@Override
	public List<EmployeeVO> getAllEmployees() {
		return dao.getAllEmployees();
	}
}

package com.lab19.myapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lab19.myapp.bean.EmpVO;
import com.lab19.myapp.dao.EmpDao;

@Service
public class EmpServiceImpl implements EmpService {

	@Autowired
	EmpDao dao;
	
	@Override
	public int insertEmp(EmpVO vo) {
		return dao.insertEmp(vo);
	}

	@Override
	public int updateEmp(EmpVO vo) {
		return dao.updateEmp(vo);
	}

	@Override
	public int deleteEmp(int id) {
		return dao.deleteEmp(id);
	}

	@Override
	public EmpVO getEmp(int id) {
		return dao.getEmp(id);
	}

	@Override
	public List<EmpVO> getEmpList() {
		return dao.getEmpList();
	}
	
}

package com.lab19.myapp.service;

import java.util.List;

import com.lab19.myapp.bean.EmpVO;

public interface EmpService {
	public int insertEmp(EmpVO vo);
	public int updateEmp(EmpVO vo);
	public int deleteEmp(int id);
	public EmpVO getEmp(int id);
	public List<EmpVO> getEmpList();
}

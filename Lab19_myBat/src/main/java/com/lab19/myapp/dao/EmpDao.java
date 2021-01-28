package com.lab19.myapp.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lab19.myapp.bean.EmpVO;

@Repository
public class EmpDao {
	@Autowired
	SqlSession sqlsession;
	
	private static final String LIST = "Emp.getEmpList";
	private static final String INSERT = "Emp.insertEmp";
	private static final String UPDATE = "Emp.updateEmp";
	private static final String DELETE = "Emp.deleteEmp";
	private static final String GET = "Emp.getEmp";

	
	public int insertEmp(EmpVO vo) {
		return sqlsession.insert(INSERT, vo);
	}
	
	public int updateEmp(EmpVO vo) {
		return sqlsession.update(UPDATE, vo);
	}
	
	public int deleteEmp(int id) {
		return sqlsession.delete(DELETE, id);
	}
	
	public EmpVO getEmp(int id) {
		return sqlsession.selectOne(GET, id);
	}
	
	public List<EmpVO> getEmpList() {
		return sqlsession.selectList(LIST);
	}
}

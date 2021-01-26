package com.lab17.myapp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.lab17.myapp.bean.EmpVO;

public class EmpDao {
	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
			this.template = template;
	}
	
	public int save(EmpVO vo) {
		String sql = "insert into emp99(name, salary, designation) values('" + vo.getName() + "',"
								+ vo.getSalary() + ",'" + vo.getDesignation() + "')";
		return template.update(sql);
	}
	public int update(EmpVO vo) {
		String sql = "update emp99 set name = '" + vo.getName() + "', salary=" + vo.getSalary() + ",designation='" + vo.getDesignation()
								+ "' where id=" + vo.getId()+"";
		return template.update(sql);
	}
	public int delete(int id) {
		String sql = "delete from emp99 where id=" + id+"";
		return template.update(sql);
	}
	
	public EmpVO getEmpById(int id) {
		String sql = "select * from emp99 where id=?";
		return template.queryForObject(sql, new Object[] {id}, new BeanPropertyRowMapper<EmpVO>(EmpVO.class));
	}
	
	public List<EmpVO> getEmpLists() {
			return template.query("select * from emp99", new RowMapper<EmpVO>() {
				public EmpVO mapRow(ResultSet rs, int row) throws SQLException {
					EmpVO one = new EmpVO();
					one.setId(rs.getInt(1));
					one.setName(rs.getString(2));
					one.setSalary(rs.getFloat(3));
					one.setDesignation(rs.getString(4));
					one.setRegdate(rs.getDate(5));
					
					return one;
				}
			});
	}
}

package com.lab17.myapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lab17.myapp.bean.EmpVO;
import com.lab17.myapp.dao.EmpDao;

@Controller
public class EmpController {
	@Autowired
	EmpDao dao;
	
	@RequestMapping("/")
	public String goIndex() {
		return "index";
	}
	 /*It displays a form to input data, here "command" is a reserved request attribute  
     *which is used to display object data into form  
     */   
	@RequestMapping("/empform")
	public String showForm(Model m) {
		m.addAttribute("command", new EmpVO());
		return "empform";
	}
	
	/*It saves object into database. The @ModelAttribute puts request data  
     *  into model object. You need to mention RequestMethod.POST method   
     *  because default request is GET*/    
	@RequestMapping(value = "/save", method = RequestMethod.POST) 
	public String save(@ModelAttribute("emp") EmpVO vo) {
		dao.save(vo);
		return "redirect:/list";
	}
	
    /* It provides list of employees in model object */    
	@RequestMapping("/list")
	public String viewemp(Model m) {
		List<EmpVO> list = dao.getEmpLists();
		m.addAttribute("list", list);
		
		return "list";
	}
	
	/* It displays object data into form for the given id.   
     * The @PathVariable puts URL data into variable.*/    
	@RequestMapping(value = "editEmp/{id}")
	public String edit(@PathVariable int id, Model m) {
		EmpVO vo = dao.getEmpById(id);
		m.addAttribute("command", vo);
		
		return "empeditform";
	}
	
    /* It updates model object. */    
	@RequestMapping(value="/editsave", method = RequestMethod.POST)
	public String editsave(@ModelAttribute("emp") EmpVO vo) {
		dao.update(vo);
		return "redirect:/list";
	}
	
    /* It deletes record for the given id in URL and redirects to /viewemp */    
	@RequestMapping(value="/deleteEmp/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable int id) {
		dao.delete(id);
		return "redirect:/list";
	}
	
	
}

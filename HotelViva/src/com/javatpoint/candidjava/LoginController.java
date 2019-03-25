package com.javatpoint.candidjava;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javatpoint.beans.Emp;
import com.javatpoint.beans.Reservation;
import com.javatpoint.beans.Reserved_room;
import com.javatpoint.dao.EmpDao;
import com.javatpoint.dao.ReservationDao;

@Controller
public class LoginController {

	@Autowired
	EmpDao dao;

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(@ModelAttribute("emp") Emp emp) {
		dao.save(emp);
		return "redirect:/viewemp";
		// will redirect to viewemp request mapping
	}

	@RequestMapping("/viewemp")
	public String viewemp(Model m) {
		List<Emp> list = dao.getEmployees();
		m.addAttribute("list", list);
		return "viewemp";
	}

	@RequestMapping("/empform")
	public String showform(Model m) {
		m.addAttribute("command", new Emp());
		return "empform";
	}

	@RequestMapping(value = "/editemp")
	public String edit(@RequestParam("id") int id, Model m) {
		Emp emp = dao.getEmpById(id);
		m.addAttribute("command", emp);
		return "empeditform";
	}

	@RequestMapping(value = "/editsave", method = RequestMethod.POST)
	public String editsave(@ModelAttribute("emp") Emp emp) {
		dao.update(emp);
		return "redirect:/viewemp";
	}

	/* It deletes record for the given id in URL and redirects to /viewemp */
	@RequestMapping(value = "/deleteemp", method = RequestMethod.GET)
	public String delete(@RequestParam("id") int id) {
		dao.delete(id);
		return "redirect:/viewemp";
	}

	@RequestMapping("/custroomdata1")
	public String custroom(Model m) {
		return "custroomdata1";
	}

	@Autowired
	ReservationDao resdao;

	@RequestMapping(value = "/csave", method = RequestMethod.POST)
	public String csave(@ModelAttribute("res") Reservation res, @ModelAttribute("resroom") Reserved_room resroom) {
		resdao.csave(res);
		return "reserved_room";
	}

	@RequestMapping("/empPdfExport")
	public String exportPdf(Model map){
		map.addAttribute("emps", dao.getEmployees());
		return "EmpPDF";
	}
}

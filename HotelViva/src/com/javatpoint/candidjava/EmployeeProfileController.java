package com.javatpoint.candidjava;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.javatpoint.beans.EmployeeProfile;
import com.javatpoint.dao.EmployeeProfileDao;

@Controller
public class EmployeeProfileController {

	@Autowired
	EmployeeProfileDao edao;

	@RequestMapping(value = "/empsave", method = RequestMethod.POST)
	public String rsave(@ModelAttribute("ep") EmployeeProfile ep) {
		edao.save(ep);
		return "empprof";
	}

	@RequestMapping("doLogin")
	public ModelAndView doLogin(@ModelAttribute @Valid EmployeeProfile userBean, BindingResult result) {
		ModelAndView view = new ModelAndView("Login");

		if (!result.hasFieldErrors()) {
			if (!edao.authenticateUser(userBean)) {
				result.addError(new ObjectError("err", "Invalid Credentials"));
			} else {
				view.setViewName("success");
			}
		}
		return view;
	}

	@RequestMapping(value = "/employeeprofile")
	public String employeeprofile() {
		return "employeeprofile";
	}
}
package com.javatpoint.candidjava;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javatpoint.beans.Emp;
import com.javatpoint.beans.Room;
import com.javatpoint.dao.EmpDao;
import com.javatpoint.dao.RoomDao;

@Controller
public class RoomController {

	@Autowired
	JdbcTemplate template;

	@Autowired
	RoomDao rdao;

	@Autowired
	EmpDao edao;

	@RequestMapping(value = "/room")
	public String createroom() {
		return "room";
	}

	@RequestMapping(value = "/rsave", method = RequestMethod.POST)
	public String rsave(@ModelAttribute("room") Room room, Model m) {
		rdao.save(room);
		List<Room> list = rdao.getRoom();
		m.addAttribute("list", list);
		return "rview";
	}

	@RequestMapping("/rview")
	public String viewBookedRooms(Model m) {
		List<Room> list = rdao.getRoom();
		m.addAttribute("roomData", list);
		return "rview";
	}

	@RequestMapping("/rview")
	public String viewAllRooms(Model m) {
		List<Room> list = rdao.getRoom();
		m.addAttribute("list", list);
		return "rview";
	}

	@RequestMapping(value = "/bookAndUpdate", method = RequestMethod.POST)
	public String bookCustAndUpdateRoom(@ModelAttribute("emp") Emp emp, Model model) {
		edao.save(emp);
		System.out.println("emp " + emp.toString());
		System.out.println("emp " + emp.getRoomno());
		int rn = emp.getRoomno();
		System.out.println(rn);
		template.update("update cust_reserved_room11 set status=false where roomno = " + rn);
		List<Room> bookedRooms = rdao.getBookedRoom();
		model.addAttribute("roomdata", bookedRooms);
		return "bookedrooms";
	}

	@RequestMapping(value = "/checkoutAndUpdate", method = RequestMethod.GET)
	public String roomCheckout(@ModelAttribute("emp") Emp emp) {

		template.update("update cust_reserved_room11 set status=false where roomno = " + 0);
		return "bookedrooms";
	}

	@RequestMapping("/roomCheckoutAndUpdate")
	public String exportPdf(@RequestParam("roomno") int roomno, Model map) {
		map.addAttribute("emps", rdao.getRoomById(roomno));
		return "EmpPDF";
	}
}

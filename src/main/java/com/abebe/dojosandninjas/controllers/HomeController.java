package com.abebe.dojosandninjas.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import com.abebe.dojosandninjas.services.NinjaService;
import com.abebe.dojosandninjas.services.DojoService;

@Controller
public class HomeController {

	private DojoService userServ;
	private NinjaService ninjaServ;
	
	public HomeController(DojoService userServ,NinjaService ninjaServ) {
		this.userServ = userServ;
		this.ninjaServ = ninjaServ;
	}

	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("allNinjas", ninjaServ.getAll());
		model.addAttribute("allDojos", userServ.getAll());
		return "main/dashboard.jsp";
	}

}

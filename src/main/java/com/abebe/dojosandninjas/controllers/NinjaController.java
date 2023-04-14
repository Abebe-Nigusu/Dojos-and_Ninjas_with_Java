package com.abebe.dojosandninjas.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.abebe.dojosandninjas.models.Ninja;
import com.abebe.dojosandninjas.services.NinjaService;
import com.abebe.dojosandninjas.services.DojoService;

import jakarta.validation.Valid;

@Controller
@RequestMapping("/ninjas")
public class NinjaController {

	private final NinjaService ninjaServ;
	private final DojoService dojoServ;
	public NinjaController(NinjaService ninjaServ,DojoService dojoServ) {
		this.ninjaServ = ninjaServ;
		this.dojoServ = dojoServ;
	}
	
	@GetMapping("/new")
	public String createNinja(@ModelAttribute("ninja") Ninja ninja, Model model) {
		model.addAttribute("allDojos", dojoServ.getAll());
		return "ninja/create.jsp";
	}
	
	@PostMapping("/process/new")
	public String processCreateNinja(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result, Model model) {
		if(result.hasErrors()) {
			model.addAttribute("allDojos", dojoServ.getAll());
			return "ninja/create.jsp";
		}
		ninjaServ.create(ninja);
		return "redirect:/";
	}
	
	@GetMapping("/display/{id}")
	public String displayNinja(@PathVariable("id") Long id, Model model) {
		model.addAttribute("ninja", ninjaServ.getOne(id));
		return "ninja/display.jsp";
	}
	
	@GetMapping("/edit/{id}")
	public String editNinja(@PathVariable("id") Long id, Model model) {
		model.addAttribute("ninja", ninjaServ.getOne(id));
		return "ninja/edit.jsp";
	}
	
	@PutMapping("/process/edit/{id}")
	public String processEditNinja(@Valid @ModelAttribute("ninja") Ninja ninja,BindingResult result) {
		if(result.hasErrors()) {
			return "ninja/edit.jsp";
		}
		ninjaServ.update(ninja);
		return "redirect:/";
	}

}

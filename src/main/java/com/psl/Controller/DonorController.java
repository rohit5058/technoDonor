package com.psl.Controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.psl.Entity.Donor;
import com.psl.Service.DonorService;

@Controller
public class DonorController {

	/*ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	DonorService service = context.getBean("service", DonorService.class);
	*/
	
	@Autowired
	private DonorService service;
	
	
	

	@RequestMapping(value={"/","/home"}, method=RequestMethod.GET)
	public String showHomePage(Model model){
		System.out.println("Inside home");
		model.addAttribute("donor", new Donor());
		
		return "home";
	}
	
	
	@RequestMapping(value={"/","/home"}, method=RequestMethod.POST)
	public String createDonor(Model model, Donor d, BindingResult result){
		model.addAttribute("id", d.getId());
		model.addAttribute("donorName", d.getName());
		model.addAttribute("bloodGroup", d.getBloodgroup());
		
		if(result.hasErrors())
		return "home";
		service.createDonor(d);
		return "donorInfo";
		
	}
}

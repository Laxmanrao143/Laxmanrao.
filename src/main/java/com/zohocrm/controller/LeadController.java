package com.zohocrm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zohocrm.entities.Contact;
import com.zohocrm.entities.Lead;
import com.zohocrm.services.ContactService;
import com.zohocrm.services.LeadService;


@Controller
public class LeadController {
	@Autowired
	private LeadService leadService;
	@Autowired
	private ContactService contactService;
	
	@RequestMapping("/root")
public String viewLeadPage() {
	return "create_lead";
	

	
	
}@RequestMapping("/saveLead")
public String saveLead(@ModelAttribute("lead")Lead lead,Model m) {
leadService.saveOneLead(lead);
m.addAttribute("lead", lead);
return "lead_info";

}@RequestMapping("/composeEmail")
public String composeEmail(@RequestParam("email")String email,Model m) {
	m.addAttribute("email",email);
	return "compose_email";
}@RequestMapping("/convertLead")
public String convertLead(@RequestParam("id")long id) {
	Lead lead=leadService.getOneLead(id);
	
	Contact contact = new Contact();
	
	contact.setFirstName(lead.getFirstName());
	contact.setLastName(lead.getLastName());
	contact.setEmail(lead.getEmail());
	contact.setMobile(lead.getMobile());
	contact.setSource(lead.getSource());
	
	contactService.saveOneContact(contact);
	leadService.deleteOneLead(lead.getId());
	return "create_lead";
}	

@RequestMapping("/listall")
public String getAllLeads(ModelMap m)
{
	List<Lead> leads = leadService.listLeads();
	m.addAttribute("l", leads);
	return "list_leads";
	
}

@RequestMapping("/findLeadById")
public String findOneLead(@RequestParam("id")long id,Model m) {
	Lead lead=(Lead) leadService.getOneLead(id);
	m.addAttribute("lead", lead);
	return "lead_info";
}

@RequestMapping("/fetchall")
public String fetchAll(ModelMap m)
{
	List<Lead> l = leadService.fetchAllData();
	m.addAttribute("l", l);
	return "Show_lead";
	
}

@RequestMapping("/contactlist")
public String contactAll(ModelMap m)
{
	List<Contact> c = contactService.contactAllData();
	m.addAttribute("c", c);
	return "Show_contact";
	
}





}

package com.zohocrm.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zohocrm.entities.Lead;
import com.zohocrm.repositories.LeadRepository;
@Service
public class LeadServiceImpl implements LeadService {
	@Autowired
	private LeadRepository leadRepo;
	@Override
	public void saveOneLead(Lead lead) {
		leadRepo.save(lead);
	}
	@Override
	public Lead getOneLead(long id) {
		Optional<Lead> findById = leadRepo.findById(id);
		Lead lead=findById.get();
		return lead;

}
	@Override
	public List<Lead> listLeads() {
		List<Lead> leads = leadRepo.findAll();
		return leads;
	}
	@Override
	public void deleteOneLead(long id) {
		leadRepo.deleteById(id);
		
	}
	@Override
	public List<Lead> getLeads() {
		List<Lead>leads=leadRepo.findAll();
		return leads;
	}
	@Override
	public List<Lead> fetchAllData() {
	    List<Lead> l = leadRepo.findAll();
		return l;
	}

}
	
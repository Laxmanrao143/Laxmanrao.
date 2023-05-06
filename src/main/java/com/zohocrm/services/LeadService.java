package com.zohocrm.services;

import java.util.List;

import com.zohocrm.entities.Lead;

public interface LeadService {

	List<Lead> listLeads();

	void saveOneLead(Lead lead);

	Lead getOneLead(long id);

	void deleteOneLead(long id);

	List<Lead> getLeads();

	List<Lead> fetchAllData();

	



}

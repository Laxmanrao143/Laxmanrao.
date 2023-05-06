package com.zohocrm.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zohocrm.entities.Contact;
import com.zohocrm.repositories.ContactRepository;
@Service
public class ContactServiceImpl implements ContactService {
@Autowired
private ContactRepository contactRepo;
	@Override
	public void saveOneContact(Contact contact) {
		contactRepo.save(contact);
	}
	@Override
	public List<Contact> contactAllData() {
		List<Contact> c = contactRepo.findAll();
		return c;
	}

}

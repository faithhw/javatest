package com.fit.phonebook.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fit.phonebook.model.Contact;
import com.fit.phonebook.repository.ContactRepository;
import com.fit.phonebook.service.ContactService;

@Service("contactService")
@Transactional
public class ContactServiceImpl implements ContactService {

	@Inject
	private ContactRepository contactRepository;

	@Override
	@Transactional(readOnly = true)
	public Contact findOne(String id) {
		return contactRepository.findOne(String.valueOf(id));
	}

	@Override
	@Transactional(readOnly = true)
	public List<Contact> findByEmail(String email) {
		return contactRepository.findByEmail(email);
	}
}

package com.fit.phonebook.service;

import java.util.List;

import com.fit.phonebook.model.Contact;

public interface ContactService {
	List<Contact> findByEmail(String email);

	Contact findOne(String id);
}

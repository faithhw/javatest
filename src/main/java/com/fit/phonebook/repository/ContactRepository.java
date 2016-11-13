package com.fit.phonebook.repository;

import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;
import com.fit.phonebook.model.Contact;
import java.util.List;

@Transactional
public interface ContactRepository extends CrudRepository<Contact, String> {
  public List<Contact> findByEmail(String email);
}

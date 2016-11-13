package com.fit.phonebook.controller;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ws.server.endpoint.annotation.Endpoint;
import org.springframework.ws.server.endpoint.annotation.PayloadRoot;
import org.springframework.ws.server.endpoint.annotation.RequestPayload;
import org.springframework.ws.server.endpoint.annotation.ResponsePayload;

import com.fit.phonebook.model.Contact;
import com.fit.phonebook.service.ContactService;

import java.util.concurrent.atomic.AtomicLong;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;

@RestController
public class ContactController {
  private static final String template = "Hello, %s!";
  private final AtomicLong counter = new AtomicLong();

  @Inject
  private ContactService contactService;

  @RequestMapping("/get-by-email")
  public Contact getByEmail(String email) {
    String contactId;
    try {
      List<Contact> contacts = contactService.findByEmail(email);
      if (contacts != null && contacts.size() > 0) {
        return contacts.get(0);
      }
    }
    catch (Exception ex) {
      return null;
    }
    return null;
  }


    @RequestMapping("/get-by-id")
    public Contact getById(String id) {
      try {
        Contact contact = contactService.findOne(id);
        return contact;
      }
      catch (Exception ex) {
        return null;
      }
    }
}

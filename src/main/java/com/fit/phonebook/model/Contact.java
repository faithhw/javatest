package com.fit.phonebook.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

import javax.persistence.Column;
import javax.persistence.Convert;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Table(name = "contact")
public class Contact {
  @Id
  private String studentId;

  @Column(name = "name", length = 100)
  private String name;

  @Column(name = "class", length = 100)
  private String class_;

  @Column(name = "phone", length = 100)
  private String phone;

  @Column(name = "email", length = 100)
  private String email;



  /**
  * Returns value of studentId
  * @return
  */
  public String getStudentId() {
    return studentId;
  }

  /**
  * Sets new value of studentId
  * @param
  */
  public void setStudentId(String studentId) {
    this.studentId = studentId;
  }

  /**
  * Returns value of name
  * @return
  */
  public String getName() {
    return name;
  }

  /**
  * Sets new value of name
  * @param
  */
  public void setName(String name) {
    this.name = name;
  }

  /**
  * Returns value of phone
  * @return
  */
  public String getPhone() {
    return phone;
  }

  /**
  * Sets new value of phone
  * @param
  */
  public void setPhone(String phone) {
    this.phone = phone;
  }

  /**
  * Returns value of email
  * @return
  */
  public String getEmail() {
    return email;
  }

  /**
  * Sets new value of email
  * @param
  */
  public void setEmail(String email) {
    this.email = email;
  }

  /**
  * Default empty Contact constructor
  */
  public Contact() {
    super();
  }

  /**
  * Default Contact constructor
  */
  public Contact(String studentId, String name, String phone, String email, String getStudentId) {
    super();
    this.studentId = studentId;
    this.name = name;
    this.phone = phone;
    this.email = email;
  }
}

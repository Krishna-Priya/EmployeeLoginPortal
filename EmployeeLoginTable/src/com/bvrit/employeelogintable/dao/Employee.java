package com.bvrit.employeelogintable.dao;

public class Employee {
    public String name;
    public String role;
    public String email;
    public String phno;
    public String address;
    public String company;
    public String designation;
    public String role_id;
    Employee(String name,String role,String email,String phno,String address,String company,String designation,String role_id){
        this.name = name;
        this.role = role;
        this.email = email;
        this.phno = phno;
        this.address = address;
        this.company = company;
        this.designation = designation;
        this.role_id = role_id;
    }

}
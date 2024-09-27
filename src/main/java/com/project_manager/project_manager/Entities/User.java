package com.project_manager.project_manager.Entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

import java.util.UUID;

@Entity
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;
    private String name;
    private String email;
    private String password;



    public User() {
        this.name = name;
    }

    // getters and setters
    public String getName(){
        return name;
    }
    public void setName(String name){
        this.name = name;
    }



    public String getEmail(){
        return email;
    }
    public void setEmail(String email){
        this.email = email;
    }



    public void setPassword(String password){
        this.password = password;
    }
    public String getPassword(){
        return password;
    }

}

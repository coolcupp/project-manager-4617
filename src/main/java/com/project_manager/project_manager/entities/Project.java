package com.project_manager.project_manager.entities;

import jakarta.persistence.*;

import java.util.List;
import java.util.UUID;


@Entity
public class Project {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;
    private String name;
    private String description;
    @OneToMany(mappedBy = "project")
    private List<Task> tasks;

    // getters and setters
    public String getName(){
        return name;
    }
    public void setName(String name){
        this.name = name;
    }


    public String getDescription(){
        return description;
    }
    public void setDescription(String description){
        this.description = description;
    }



}




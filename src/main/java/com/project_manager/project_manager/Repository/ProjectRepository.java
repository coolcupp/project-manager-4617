package com.project_manager.project_manager.Repository;

import com.project_manager.project_manager.entities.Project;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface ProjectRepository extends JpaRepository<Project, UUID> {
    // Дополнительные методы, если необходимо
}
package com.project_manager.project_manager.Repository;

import com.project_manager.project_manager.entities.Role;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface RoleRepository extends JpaRepository<Role, UUID> {
    // Дополнительные методы, если необходимо
}
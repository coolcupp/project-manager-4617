package com.project_manager.project_manager.Repository;

import com.project_manager.project_manager.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;
import java.util.UUID;

public interface UserRepository extends JpaRepository<User, UUID> {
    Optional<User> findByUsername(String name);

    Optional<User> findByEmail(String email);

    boolean existsByUsername(String name);

    boolean existsByEmail(String email);

}
package com.project_manager.project_manager.Repository;

import com.project_manager.project_manager.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);

}

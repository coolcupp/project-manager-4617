package com.project_manager.project_manager.Repository;

import com.project_manager.project_manager.entities.Task;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.UUID;

public interface TaskRepository extends JpaRepository<Task, UUID> {
    List<Task> findByStatus(String status);
    List<Task> findByProjectId(UUID projectId);
}
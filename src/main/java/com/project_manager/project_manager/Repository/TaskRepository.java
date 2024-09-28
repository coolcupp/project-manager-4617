package com.project_manager.project_manager.Repository;

import com.project_manager.project_manager.entities.Task;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TaskRepository extends JpaRepository<Task, Long> {
    List<Task> findByStatus(String status);
    List<Task> findByProjectId(Long projectId);
}
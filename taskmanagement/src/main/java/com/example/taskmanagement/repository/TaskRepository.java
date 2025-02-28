package com.example.taskmanagement.repository;

import org.springframework.data.mongodb.repository.MongoRepository;
import com.example.taskmanagement.model.Task;
import java.util.List;

public interface TaskRepository extends MongoRepository<Task, String> {
    List<Task> findByNameContaining(String name);
}

package com.project_manager.project_manager.Service;
import com.project_manager.project_manager.Repository.UserRepository;
import com.project_manager.project_manager.entities.User;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class UserService {

    private UserRepository userRepository;


    public List<User> getAllUsers() {
        return userRepository.findAll();
    }

    public User findUserById(Long id){
        return userRepository.findById(id).orElse(null);
    }


    public void saveUser(User user){
        userRepository.save(user);
    }

    public void deleteUser(Long id){
        userRepository.deleteById(id);
    }

}

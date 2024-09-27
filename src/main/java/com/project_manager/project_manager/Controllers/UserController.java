package com.project_manager.project_manager.Controllers;
import com.project_manager.project_manager.Service.UserService;
import com.project_manager.project_manager.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("api/users")
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping
    public List<User> getAllUsers() {
        return userService.getAllUsers();
    }

    @GetMapping
    public User getUserById(@PathVariable Long id) {
        return userService.findUserById(id);
    }


    @PostMapping
    public User createUser(@RequestBody User user) {
        userService.saveUser(user);
        return user;
    }

    @DeleteMapping("{id}")
    public void deleteUser(@PathVariable Long id) {
        userService.deleteUser(id);
    }
}

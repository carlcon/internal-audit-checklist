/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jamj.internalauditchecklist.service;

import jamj.internalauditchecklist.dao.UserDao;
import jamj.internalauditchecklist.model.Login;
import jamj.internalauditchecklist.model.User;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author JC
 */
public class UserServiceImpl implements UserService {
    
    @Autowired
    public UserDao userDao;
    
    public User validateUser(Login login){
        return userDao.validateUser(login);
    }
}

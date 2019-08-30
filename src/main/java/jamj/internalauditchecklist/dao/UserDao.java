/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jamj.internalauditchecklist.dao;

import jamj.internalauditchecklist.model.Login;
import jamj.internalauditchecklist.model.User;

/**
 *
 * @author JC
 */
public interface UserDao {
    User validateUser(Login login);
}



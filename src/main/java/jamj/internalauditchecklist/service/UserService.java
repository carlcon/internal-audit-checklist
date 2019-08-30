/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jamj.internalauditchecklist.service;

import jamj.internalauditchecklist.model.Login;
import jamj.internalauditchecklist.model.User;

/**
 *
 * @author JC
 */
public interface UserService {
    //void register (Login login);
    
   User validateUser(Login login);
}

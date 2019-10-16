/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jamj.internalauditchecklist.dao;

import jamj.internalauditchecklist.dao.UserDao;
import jamj.internalauditchecklist.model.Login;
import jamj.internalauditchecklist.model.User;
import jamj.internalauditchecklist.model.UserPrincipal;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

/**
 *
 * @author JC
 */
public class UserDaoImpl implements UserDao, UserDetailsService{

    @Autowired
    DataSource datasource;
    
    @Autowired
    JdbcTemplate jdbcTemplate;
    
    public User validateUser(Login login) {
       
//        String sql = "SELECT * FROM users WHERE username = '" + login.getUsername() + "' and password= '" + login.getPassword() + "'";
//        
//        List<User> user = jdbcTemplate.query(sql, new LoginMapper());
        
            String sql2 = "SELECT u.*, s.status_name, r.role, concat(u.first_name, ' ', u.last_name) full_name FROM users u " +
                        "INNER JOIN statuses s ON u.status_id = s.status_id " +
                        "INNER JOIN roles r ON u.role_id = r.role_id";
            List<User> user = jdbcTemplate.query(sql2, new UserMapper());
            
            return user.get(0);

        
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
         
        String sql = "SELECT u.*, concat('ROLE_', role) role FROM users u inner join roles r on u.role_id = r.role_id WHERE username = '" + username + "'";
        List<User> user = jdbcTemplate.query(sql, new UserMapper());
        if (user == null) {
            throw new UsernameNotFoundException(username);
        }
        return new UserPrincipal(user.get(0));
    }
    
    
    class UserMapper implements RowMapper<User>{

        public User mapRow(ResultSet rs, int arg1) throws SQLException{
            User user = new User();

            user.setUserId(rs.getInt("user_id"));
            user.setRoleId(rs.getInt("role_id"));
            user.setUsername(rs.getString("username"));
            user.setPassword(rs.getString("password"));
            user.setPosition(rs.getString("position"));
            user.setFirstName(rs.getString("first_name"));
            user.setMiddleName(rs.getString("middle_name"));
            user.setLastName(rs.getString("last_name"));
            user.setEmail(rs.getString("email"));
            user.setContactNum(rs.getString("contact_num"));
            user.setDateCreated(rs.getTimestamp("date_created"));
            user.setCreatedById(rs.getInt("created_by"));
            user.setDateModified(rs.getTimestamp("date_modified"));
            user.setModifiedById(rs.getInt("modified_by"));
            user.setRole(rs.getString("role"));
       

            return user;
        }
    } //end of class
    
  
}

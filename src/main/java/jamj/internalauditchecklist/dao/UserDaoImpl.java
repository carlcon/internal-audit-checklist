/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jamj.internalauditchecklist.dao;

import jamj.internalauditchecklist.model.Login;
import jamj.internalauditchecklist.model.User;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author JC
 */
public class UserDaoImpl implements UserDao{

    @Autowired
    DataSource datasource;
    
    @Autowired
    JdbcTemplate jdbcTemplate;
    
    public User validateUser(Login login) {
       
        String sql = "SELECT * FROM users WHERE username = '" + login.getUsername() + "' and password= '" + login.getPassword() + "'";
        
        List<User> user = jdbcTemplate.query(sql, new UserMapper());
        
        if (user.size() > 0) {
            String sql2 = "SELECT u.user_id, " +
                    "u.role_id, " +
                    "u.username, " +
                    "u.password, " +
                    "u.position, " +
                    "u.first_name, " +
                    "u.middle_name, " +
                    "u.last_name, " +
                    "u.email, " +
                    "u.contact_num, " +
                    "u.date_created, " +
                    "u.created_by, " +
                    "u.date_modified, " +
                    "u.modified_by, " +
                    "u.status_id " +
                    "FROM users u " ;
//                        "INNER JOIN statuses s ON u.status_id = s.status_id " +
//                        "INNER JOIN users m ON u.modified_by = m.user_id " +
//                        "INNER JOIN users c ON c.user_id = u.created_by " +
//                        "INNER JOIN roles r ON u.role_id = r.role_id";

            user = jdbcTemplate.query(sql2, new UserMapper());

//            String sql3 = "select user_id, username from users where created_by =" + user.get(0).getCreatedBy() ;
//
//            user = jdbcTemplate.query(sql3, new CreatedByMapper());
            
            return user.get(0);
        }
        else return null;
        
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

            return user;
        }
    } //end of class

//    class CreatedByMapper implements RowMapper<User>{
//
//        public User mapRow(ResultSet rs, int arg1) throws SQLException{
//            User user = new User();
//
//            user.setCreatedById(rs.getInt("user_id"));
//            user.setCreatedBy(rs.getString("username"));
////            user.setStatus(rs.getString(17));
////            user.setRole(rs.getString(18));
////            user.setFullName(rs.getString(19));
//            return user;
//
//        }
//    } //end of class



//    String sql = "INSERT INTO tblUsers(username, user_pass, first_name, last_name, user_email, user_address, user_phone )"
//                + "VALUES(?, ?, ?, ?, ?, ?, ?)";
//        
//        jdbcTemplate.update(sql, new Object[]{User.ge})
    
}

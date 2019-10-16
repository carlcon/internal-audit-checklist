/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jamj.internalauditchecklist.controller;

import jamj.internalauditchecklist.model.OverallDetails;
import jamj.internalauditchecklist.model.User;
import jamj.internalauditchecklist.model.UserPrincipal;
import jamj.internalauditchecklist.service.ChecklistService;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author JC
 */
@Controller
public class ChecklistController {
    
    @Autowired
    ChecklistService checklistService;
    
    @RequestMapping(value = "/saveChecklist", method = RequestMethod.POST)
     @ResponseBody
    public User saveChecklist(@RequestBody OverallDetails overallDetails, HttpServletRequest request){
       UserPrincipal currentUser = (UserPrincipal) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
       User user = new User();
     
       overallDetails.setPreparedById(currentUser.getUser().getUserId()); // set created by to user id from current logged in 
     
        Date date= new Date();
        long time = date.getTime();
	overallDetails.setDateCreated(new Timestamp(time)); // set date requested to current datetime

        overallDetails.setStatusId(1); // set status to active
        
        int result = 0;
        if (overallDetails.getControlId() == 0){
            result = checklistService.createChecklist(overallDetails);
        }
        else {
            result = checklistService.updateChecklist(overallDetails);
        }

        user.setUserId(result);

        return user;
     
    }
    
    @RequestMapping(value = "/getChecklist", method = RequestMethod.GET)
    @ResponseBody
    public List<OverallDetails> getChecklist( HttpServletRequest request){        
        List<OverallDetails> checklist = checklistService.getChecklist();
        return checklist;
    }
    
    @RequestMapping(value = "/getChecklistById", method = RequestMethod.POST)
    @ResponseBody
    public OverallDetails getChecklistById(@RequestBody OverallDetails overallDetails){        
       return checklistService.getChecklistById(overallDetails);
    }
    
    @RequestMapping(value = "/deleteChecklist", method = RequestMethod.POST)
    @ResponseBody
    public User deleteChecklist(@RequestBody OverallDetails overallDetails, HttpServletRequest request){
        UserPrincipal currentUser = (UserPrincipal) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = new User();

        //overallDetails.setCreatedBy(currentUser.getUser().getUserId()); // set created by to user id from cookie 
    
        int result = checklistService.deleteChecklist(overallDetails);

        user.setUserId(result);

        return user;
    }
    
    @RequestMapping(value = "/inspectChecklist", method = RequestMethod.POST)
    @ResponseBody
    public User inspectChecklist(@RequestBody OverallDetails overallDetails, HttpServletRequest request){
        UserPrincipal currentUser = (UserPrincipal) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = new User();

        //overallDetails.setCreatedBy(currentUser.getUser().getUserId()); // set created by to user id from cookie 
        overallDetails.setInspectedById(currentUser.getUser().getUserId());
        int result = checklistService.inspectChecklist(overallDetails);

        user.setUserId(result);

        return user;
    }
    
    @RequestMapping(value = "/noteChecklist", method = RequestMethod.POST)
    @ResponseBody
    public User noteChecklist(@RequestBody OverallDetails overallDetails, HttpServletRequest request){
        UserPrincipal currentUser = (UserPrincipal) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = new User();

        //overallDetails.setCreatedBy(currentUser.getUser().getUserId()); // set created by to user id from cookie 
        overallDetails.setVerifiedById(currentUser.getUser().getUserId());
        int result = checklistService.noteChecklist(overallDetails);

        user.setUserId(result);

        return user;
    }
    
    @RequestMapping(value = "/downloadExcel", method = RequestMethod.GET)
    public ModelAndView downloadExcel(@RequestParam int id) {
        OverallDetails overallDetails = new OverallDetails();
        
        overallDetails.setControlId(id);
        OverallDetails checklist =  checklistService.getChecklistById(overallDetails);
 
        // return a view which will be resolved by an excel view resolver
        return new ModelAndView("excelView", "checklist", checklist);
        
    }
}

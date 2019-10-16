/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jamj.internalauditchecklist.service;

import jamj.internalauditchecklist.dao.ChecklistDao;
import jamj.internalauditchecklist.model.OverallDetails;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author JC
 */
public class ChecklistServiceImpl implements ChecklistService {

    @Autowired
    public ChecklistDao checklistDao;
    
    @Override
    public int createChecklist(OverallDetails overallDetails) {
        int result = checklistDao.createChecklist(overallDetails);
        return result;
    }

    @Override
    public int updateChecklist(OverallDetails overallDetails) {
       int result = checklistDao.updateChecklist(overallDetails);
        return result;
    }

    @Override
    public int deleteChecklist(OverallDetails overallDetails) {
       int result = checklistDao.deleteChecklist(overallDetails);
        return result;
    }

    @Override
    public List<OverallDetails> getChecklist() {
        return checklistDao.getChecklist();
    }

    @Override
    public OverallDetails getChecklistById(OverallDetails overallDetails) {
        return checklistDao.getChecklistById(overallDetails);
    }
    
    @Override
    public int inspectChecklist(OverallDetails overallDetails) {
        return checklistDao.inspectChecklist(overallDetails);
    }
    
    @Override
    public int noteChecklist(OverallDetails overallDetails) {
        return checklistDao.noteChecklist(overallDetails);
    }
    
    
}

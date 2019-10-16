/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jamj.internalauditchecklist.service;

import jamj.internalauditchecklist.model.OverallDetails;
import java.util.List;

/**
 *
 * @author JC
 */
public interface ChecklistService {

    int createChecklist(OverallDetails overallDetails);

    int updateChecklist(OverallDetails overallDetails);

    int deleteChecklist(OverallDetails overallDetails);

    List<OverallDetails> getChecklist();

    OverallDetails getChecklistById(OverallDetails overallDetails);

    int inspectChecklist(OverallDetails overallDetails);

    int noteChecklist(OverallDetails overallDetails);
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jamj.internalauditchecklist.view;

import jamj.internalauditchecklist.model.OverallDetails;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.web.servlet.view.document.AbstractExcelView;

/**
 *
 * @author JC
 */
public class ExcelBuilder extends AbstractExcelView {

    @Override
    protected void buildExcelDocument(
            Map<String, Object> model, 
            HSSFWorkbook workbook, 
            HttpServletRequest request, 
            HttpServletResponse response) 
            throws Exception {
        
        // get data model which is passed by the Spring container
        OverallDetails checklist = (OverallDetails) model.get("checklist");
        
         // create a new Excel sheet
        HSSFSheet sheet = workbook.createSheet("Checklist");
        sheet.setDefaultColumnWidth(30);
        
        // create header row
        HSSFRow header = sheet.createRow(0);
         
        header.createCell(0).setCellValue(checklist.getControlNo());
        
        header.createCell(1).setCellValue(checklist.getAcctbleOfficerFn());
        
         
        header.createCell(2).setCellValue(checklist.getDocsIn());
        
         
        header.createCell(3).setCellValue(checklist.getDocsOut());
        
         
        header.createCell(4).setCellValue(checklist.getAcctbleOfficerLn());
        
        
        
    }
}

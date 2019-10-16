/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jamj.internalauditchecklist.dao;

import jamj.internalauditchecklist.model.OverallDetails;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author JC
 */
public class ChecklistDaoImpl implements ChecklistDao {

    @Autowired
    DataSource datasource;

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public int createChecklist(OverallDetails overallDetails) {

//         String sql = "select exists (select * from overall_details where request_type ='" + + "')";
        String sql = "insert into overall_details ("
                + "request_type, "
                + "prepared_by, "
                + "acctble_officer_Fn, "
                + "acctble_officer_Mi, "
                + "acctble_officer_Ln, "
                + "docs_in, "
                + "docs_out, "
                + "position, "
                + "office, "
                + "act_purpose, "
                + "act_started, "
                + "act_ended, "
                + "date_created, "
                + "remarks, "
                + "status_id, "
                + "deadline, "
                + "approved_budget, "
                + "tot_reported_disburse, "
                + "received_amt, "
                + "notes) "
                + "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

        int result = jdbcTemplate.update(sql, new Object[]{
            overallDetails.getRequestType(),
            overallDetails.getPreparedById(),
            overallDetails.getAcctbleOfficerFn(),
            overallDetails.getAcctbleOfficerMn(),
            overallDetails.getAcctbleOfficerLn(),
            overallDetails.getDocsIn(),
            overallDetails.getDocsOut(),
            overallDetails.getPosition(),
            overallDetails.getOffice(),
            overallDetails.getActPurpose(),
            overallDetails.getDateStarted(),
            overallDetails.getDateEnded(),
            overallDetails.getDateCreated(),
            overallDetails.getNotes(),
            overallDetails.getStatusId(),
            overallDetails.getDeadline(),
            overallDetails.getApprovedBudget(),
            overallDetails.getTotReportedDisburse(),
            overallDetails.getReceivedAmt(),
            overallDetails.getNotes()
        });

        String lastInsertId = "select MAX(control_id) as control_id, "
                + "insert(date_created, 9, 12, lpad(MAX(control_id), 3, 0)) as control_no from overall_details";
        List<OverallDetails> checklist = jdbcTemplate.query(lastInsertId, new ChecklistDaoImpl.IDMapper());

        String sql2 = "insert into checklist1 ("
                + "control_id, "
                + "copy_spec_order, "
                + "cso_date, "
                + "cso_remarks, "
                + "approved_budget_expend, "
                + "abe_date,"
                + "abe_remarks, "
                + "approved_purchase_req, "
                + "apr_date,"
                + "apr_remarks, "
                + "cert_of_canvass, "
                + "coc_date,"
                + "coc_remarks, "
                + "liq_report, "
                + "lr_date,"
                + "lr_remarks, "
                + "report_disburse,"
                + "rd_date, "
                + "rd_remarks,"
                + "reimburse_expense_rcpt, "
                + "rer_date, "
                + "rer_remarks,"
                + "return_cash_bal, "
                + "rcb_date,"
                + "rcb_remarks)"
                + "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

        jdbcTemplate.update(sql2, new Object[]{
            checklist.get(0).getControlId(),
            overallDetails.getChecklist1().getCopySpecOrder(),
            overallDetails.getChecklist1().getCsoDate(),
            overallDetails.getChecklist1().getCsoRemarks(),
            overallDetails.getChecklist1().getApprovedBudgetExpend(),
            overallDetails.getChecklist1().getAbeDate(),
            overallDetails.getChecklist1().getAbeRemarks(),
            overallDetails.getChecklist1().getApprovedPurchaseReq(),
            overallDetails.getChecklist1().getAprDate(),
            overallDetails.getChecklist1().getAprRemarks(),
            overallDetails.getChecklist1().getCertOfCanvass(),
            overallDetails.getChecklist1().getCocDate(),
            overallDetails.getChecklist1().getCocRemarks(),
            overallDetails.getChecklist1().getLiqReport(),
            overallDetails.getChecklist1().getLrDate(),
            overallDetails.getChecklist1().getLrRemarks(),
            overallDetails.getChecklist1().getReportDisburse(),
            overallDetails.getChecklist1().getRdDate(),
            overallDetails.getChecklist1().getRdRemarks(),
            overallDetails.getChecklist1().getReimburseExpenseRcpt(),
            overallDetails.getChecklist1().getRerDate(),
            overallDetails.getChecklist1().getRerRemarks(),
            overallDetails.getChecklist1().getReturnCashBal(),
            overallDetails.getChecklist1().getRcbDate(),
            overallDetails.getChecklist1().getRcbRemarks()
        });

        String sql3 = "insert into reported_disbursement ("
                + "control_id, "
                + "supplies_n_materials, "
                + "snm_date, "
                + "snm_remarks, "
                + "food_expenses, "
                + "fe_date, "
                + "fe_remarks, "
                + "transpo_fare, "
                + "tf_date,"
                + "tf_remarks, "
                + "venue, "
                + "v_date, "
                + "v_remarks, "
                + "other_expenses, "
                + "oe_date, "
                + "oe_remarks"
                + ")"
                + "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

        jdbcTemplate.update(sql3, new Object[]{
            checklist.get(0).getControlId(),
            overallDetails.getChecklist2().getSuppliesNmaterials(),
            overallDetails.getChecklist2().getSnmDate(),
            overallDetails.getChecklist2().getSnmSuppDocs(),
            overallDetails.getChecklist2().getFoodExpenses(),
            overallDetails.getChecklist2().getFeDate(),
            overallDetails.getChecklist2().getFeSuppDocs(),
            overallDetails.getChecklist2().getTranspoFare(),
            overallDetails.getChecklist2().getTfDate(),
            overallDetails.getChecklist2().getTfSuppDocs(),
            overallDetails.getChecklist2().getVenue(),
            overallDetails.getChecklist2().getvDate(),
            overallDetails.getChecklist2().getvSuppDocs(),
            overallDetails.getChecklist2().getOtherExpenses(),
            overallDetails.getChecklist2().getOeDate(),
            overallDetails.getChecklist2().getOeSuppDocs()
        });

        String sql4 = "insert into additional_req ("
                + "control_id, "
                + "program_act, "
                + "pa_date, "
                + "pa_remarks, "
                + "itinerary_travel, "
                + "it_date, "
                + "it_remarks, "
                + "applicants_list, "
                + "al_date, "
                + "al_remarks, "
                + "narrative_report, "
                + "nr_date, "
                + "nr_remarks, "
                + "act_photos, "
                + "ap_date, "
                + "ap_remarks, "
                + "attendance_sheet, "
                + "as_date, "
                + "as_remarks "
                + ") values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

        jdbcTemplate.update(sql4, new Object[]{
            checklist.get(0).getControlId(),
            overallDetails.getChecklist3().getProgramAct(),
            overallDetails.getChecklist3().getPaDate(),
            overallDetails.getChecklist3().getPaRemarks(),
            overallDetails.getChecklist3().getItineraryTravel(),
            overallDetails.getChecklist3().getItDate(),
            overallDetails.getChecklist3().getItRemarks(),
            overallDetails.getChecklist3().getApplicantsList(),
            overallDetails.getChecklist3().getAlDate(),
            overallDetails.getChecklist3().getAlRemarks(),
            overallDetails.getChecklist3().getNarrativeReport(),
            overallDetails.getChecklist3().getNrDate(),
            overallDetails.getChecklist3().getNrRemarks(),
            overallDetails.getChecklist3().getActPhotos(),
            overallDetails.getChecklist3().getApDate(),
            overallDetails.getChecklist3().getApRemarks(),
            overallDetails.getChecklist3().getAttendanceSheet(),
            overallDetails.getChecklist3().getAsDate(),
            overallDetails.getChecklist3().getAsRemarks()
        });

        for (OverallDetails.Proofs findings : overallDetails.getProofs()) {
            String sql5 = "insert into proofs (control_id, date, supplier, receipts, details, amount, notes, remarks, status_id) values(?,?,?,?,?,?,?,?,?)";
            jdbcTemplate.update(sql5, new Object[]{
                checklist.get(0).getControlId(),
                findings.getProofDate(),
                findings.getSupplier(),
                findings.getReceipts(),
                findings.getDetails(),
                findings.getAmount(),
                findings.getNotes(),
                findings.getRemarks(),
                overallDetails.getStatusId(),});
        }
        
        String sql6 = "update overall_details set control_no = ? where control_id = ? ";
        
        jdbcTemplate.update(sql6, new Object[]{
            checklist.get(0).getControlNo(),
            checklist.get(0).getControlId()
        });
        
        return result;
    }

    @Override
    public int updateChecklist(OverallDetails overallDetails) {
        String sql = "update overall_details od, checklist1 c1, reported_disbursement rd, additional_req ar "
                + "set od.prepared_by = ?, " //start of od
                + "od.acctble_officer_Fn = ?, "
                + "od.acctble_officer_Mi = ?, "
                + "od.acctble_officer_Ln = ?, "
                + "od.docs_in = ?, "
                + "od.docs_out = ?, "
                + "od.position = ? , "
                + "od.office = ? , "
                + "od.act_purpose = ? , "
                + "act_started = ? , "
                + "act_ended = ?, "
                + "od.date_created = ? , "
                + "od.remarks = ? , "
                + "od.deadline = ?, "
                + "od.approved_budget = ?, "
                + "od.tot_reported_disburse = ?, "
                + "od.received_amt = ?, "
                + "od.notes = ?,  " //end of od
                + "c1.copy_spec_order = ?, " //start of c1
                + "c1.cso_date = ?, "
                + "c1.cso_remarks = ?, "
                + "c1.approved_budget_expend = ?, "
                + "c1.abe_date = ?,"
                + "c1.abe_remarks = ?, "
                + "c1.approved_purchase_req = ?, "
                + "c1.apr_date = ?,"
                + "c1.apr_remarks = ?, "
                + "c1.cert_of_canvass = ?, "
                + "c1.coc_date = ?,"
                + "c1.coc_remarks = ?, "
                + "c1.liq_report = ?, "
                + "c1.lr_date = ?,"
                + "c1.lr_remarks = ?, "
                + "c1.report_disburse = ?,"
                + "c1.rd_date = ?, "
                + "c1.rd_remarks = ?,"
                + "c1.reimburse_expense_rcpt = ?, "
                + "c1.rer_date = ?, "
                + "c1.rer_remarks = ?,"
                + "c1.return_cash_bal = ?, "
                + "c1.rcb_date = ?,"
                + "c1.rcb_remarks = ?, " //end of c1
                + "rd.supplies_n_materials = ?, " //start of rd
                + "rd.snm_date = ?, "
                + "rd.snm_remarks = ?, "
                + "rd.food_expenses = ?, "
                + "rd.fe_date = ?, "
                + "rd.fe_remarks = ?, "
                + "rd.transpo_fare = ?, "
                + "rd.tf_date = ?,"
                + "rd.tf_remarks = ?, "
                + "rd.venue = ?, "
                + "rd.v_date = ?, "
                + "rd.v_remarks = ?, "
                + "rd.other_expenses = ?, "
                + "rd.oe_date = ?, "
                + "rd.oe_remarks = ?, " //end of rd
                + "ar.program_act = ?, " //start of ar
                + "ar.pa_date = ?, "
                + "ar.pa_remarks = ?, "
                + "ar.itinerary_travel = ?, "
                + "ar.it_date = ?, "
                + "ar.it_remarks = ?, "
                + "ar.applicants_list = ?, "
                + "ar.al_date = ?, "
                + "ar.al_remarks = ?, "
                + "ar.narrative_report = ?, "
                + "ar.nr_date = ?, "
                + "ar.nr_remarks = ?, "
                + "ar.act_photos = ?, "
                + "ar.ap_date = ?, "
                + "ar.ap_remarks = ?, "
                + "ar.attendance_sheet = ?, "
                + "ar.as_date = ?, "
                + "ar.as_remarks = ? "//end of ar
                + "where od.control_id = ? and "
                + "c1.control_id = ? and "
                + "rd.control_id = ? and "
                + "ar.control_id = ?";

        int result = jdbcTemplate.update(sql, new Object[]{
            overallDetails.getPreparedBy(),
            overallDetails.getAcctbleOfficerFn(),
            overallDetails.getAcctbleOfficerMn(),
            overallDetails.getAcctbleOfficerLn(),
            overallDetails.getDocsIn(),
            overallDetails.getDocsOut(),
            overallDetails.getPosition(),
            overallDetails.getOffice(),
            overallDetails.getActPurpose(),
            overallDetails.getDateStarted(),
            overallDetails.getDateEnded(),
            overallDetails.getDateCreated(),
            overallDetails.getNotes(),
            overallDetails.getDeadline(),
            overallDetails.getApprovedBudget(),
            overallDetails.getTotReportedDisburse(),
            overallDetails.getReceivedAmt(),
            overallDetails.getNotes(),
            overallDetails.getChecklist1().getCopySpecOrder(),
            overallDetails.getChecklist1().getCsoDate(),
            overallDetails.getChecklist1().getCsoRemarks(),
            overallDetails.getChecklist1().getApprovedBudgetExpend(),
            overallDetails.getChecklist1().getAbeDate(),
            overallDetails.getChecklist1().getAbeRemarks(),
            overallDetails.getChecklist1().getApprovedPurchaseReq(),
            overallDetails.getChecklist1().getAprDate(),
            overallDetails.getChecklist1().getAprRemarks(),
            overallDetails.getChecklist1().getCertOfCanvass(),
            overallDetails.getChecklist1().getCocDate(),
            overallDetails.getChecklist1().getCocRemarks(),
            overallDetails.getChecklist1().getLiqReport(),
            overallDetails.getChecklist1().getLrDate(),
            overallDetails.getChecklist1().getLrRemarks(),
            overallDetails.getChecklist1().getReportDisburse(),
            overallDetails.getChecklist1().getRdDate(),
            overallDetails.getChecklist1().getRdRemarks(),
            overallDetails.getChecklist1().getReimburseExpenseRcpt(),
            overallDetails.getChecklist1().getRerDate(),
            overallDetails.getChecklist1().getRerRemarks(),
            overallDetails.getChecklist1().getReturnCashBal(),
            overallDetails.getChecklist1().getRcbDate(),
            overallDetails.getChecklist1().getRcbRemarks(),
            overallDetails.getChecklist2().getSuppliesNmaterials(),
            overallDetails.getChecklist2().getSnmDate(),
            overallDetails.getChecklist2().getSnmSuppDocs(),
            overallDetails.getChecklist2().getFoodExpenses(),
            overallDetails.getChecklist2().getFeDate(),
            overallDetails.getChecklist2().getFeSuppDocs(),
            overallDetails.getChecklist2().getTranspoFare(),
            overallDetails.getChecklist2().getTfDate(),
            overallDetails.getChecklist2().getTfSuppDocs(),
            overallDetails.getChecklist2().getVenue(),
            overallDetails.getChecklist2().getvDate(),
            overallDetails.getChecklist2().getvSuppDocs(),
            overallDetails.getChecklist2().getOtherExpenses(),
            overallDetails.getChecklist2().getOeDate(),
            overallDetails.getChecklist2().getOeSuppDocs(),
            overallDetails.getChecklist3().getProgramAct(),
            overallDetails.getChecklist3().getPaDate(),
            overallDetails.getChecklist3().getPaRemarks(),
            overallDetails.getChecklist3().getItineraryTravel(),
            overallDetails.getChecklist3().getItDate(),
            overallDetails.getChecklist3().getItRemarks(),
            overallDetails.getChecklist3().getApplicantsList(),
            overallDetails.getChecklist3().getAlDate(),
            overallDetails.getChecklist3().getAlRemarks(),
            overallDetails.getChecklist3().getNarrativeReport(),
            overallDetails.getChecklist3().getNrDate(),
            overallDetails.getChecklist3().getNrRemarks(),
            overallDetails.getChecklist3().getActPhotos(),
            overallDetails.getChecklist3().getApDate(),
            overallDetails.getChecklist3().getApRemarks(),
            overallDetails.getChecklist3().getAttendanceSheet(),
            overallDetails.getChecklist3().getAsDate(),
            overallDetails.getChecklist3().getAsRemarks(),
            overallDetails.getControlId(),
            overallDetails.getControlId(),
            overallDetails.getControlId(),
            overallDetails.getControlId()
        });

        String sql2 = "delete from proofs where control_id = ?";
        jdbcTemplate.update(sql2, new Object[]{overallDetails.getControlId()});

        for (OverallDetails.Proofs findings : overallDetails.getProofs()) {
            String sql3 = "insert into proofs ("
                    + "control_id, "
                    + "date, "
                    + "details, "
                    + "supplier, "
                    + "receipts, "
                    + "amount, "
                    + "notes, "
                    + "remarks "
                    + ")"
                    + "values (?,?,?,?,?,?,?,?) ";
            jdbcTemplate.update(sql3, new Object[]{
                overallDetails.getControlId(),
                findings.getProofDate(),
                findings.getDetails(),
                findings.getSupplier(),
                findings.getReceipts(),
                findings.getAmount(),
                findings.getNotes(),
                findings.getRemarks()

            });
        }

        return result;
    }

    @Override
    public int deleteChecklist(OverallDetails overallDetails) {
        String sql = "update overall_details "
                + "set status_id = 2 "
                + "where control_id = ? ";

        int result = jdbcTemplate.update(sql, new Object[]{overallDetails.getControlId()});

        return result;
    }

    @Override
    public List<OverallDetails> getChecklist() {
        String sql = "select od.*, concat(acctble_officer_Fn, ' ', acctble_officer_Mi, '. ', acctble_officer_Ln) acctble_officer, DATEDIFF(od.docs_out, docs_in) num_of_days, s.status_name from overall_details od "
                + "inner join statuses s on od.status_id = s.status_id "
                + "where od.status_id <> 2";

        List<OverallDetails> checklist = jdbcTemplate.query(sql, new ChecklistDaoImpl.ChecklistSummaryMapper());

        return checklist;
    }

    @Override
    public OverallDetails getChecklistById(OverallDetails overallDetails) {
        String sql = "select od.*, c1.*, rd.*, ar.*, s.status_name  from overall_details od "
                + "inner join checklist1 c1 on od.control_id = c1.control_id "
                + "inner join reported_disbursement rd on od.control_id = rd.control_id "
                + "inner join additional_req ar on od.control_id = ar.control_id "
                + "inner join statuses s on od.status_id = s.status_id "
                + "where od.control_id =" + overallDetails.getControlId();

        List<OverallDetails> checklist = jdbcTemplate.query(sql, new ChecklistDaoImpl.ChecklistMapper());

        String sql2 = "select * from proofs where control_id =" + overallDetails.getControlId();
        
        List<OverallDetails.Proofs> proofs = jdbcTemplate.query(sql2, new ChecklistDaoImpl.ChecklistProofsMapper());

        checklist.get(0).setProofs(proofs);
       
        return checklist.get(0);
    }

    
    @Override
    public int inspectChecklist(OverallDetails overallDetails) {
        String sql = "update overall_details "
                + "set status_id = 3,"
                + "inspected_by =" + overallDetails.getInspectedById()
                + " where control_id = ? ";

        int result = jdbcTemplate.update(sql, new Object[]{overallDetails.getControlId()});

        return result;
    }
    
    @Override
    public int noteChecklist(OverallDetails overallDetails) {
        String sql = "update overall_details "
                + "set status_id = 4, "
                + "verified_by =" + overallDetails.getVerifiedById()
                + " where control_id = ? ";

        int result = jdbcTemplate.update(sql, new Object[]{overallDetails.getControlId()});

        return result;
    }
    
    
    class IDMapper implements RowMapper<OverallDetails> {

        public OverallDetails mapRow(ResultSet rs, int arg1) throws SQLException {
            OverallDetails checklist = new OverallDetails();

            checklist.setControlId(rs.getInt("control_id"));
            checklist.setControlNo(rs.getString("control_no"));

            return checklist;
        }
    }

    class ChecklistMapper implements RowMapper<OverallDetails> {

        public OverallDetails mapRow(ResultSet rs, int arg1) throws SQLException {
            OverallDetails checklist = new OverallDetails();

            //overall details
            checklist.setControlId(rs.getInt("control_id"));
            checklist.setControlNo(rs.getString("control_no"));
            checklist.setRequestTypeId(rs.getInt("request_type"));
            checklist.setPreparedById(rs.getInt("prepared_by"));
            
            checklist.setInspectedById(rs.getInt("inspected_by"));
            checklist.setVerifiedById(rs.getInt("verified_by"));
            checklist.setAcctbleOfficerFn(rs.getString("acctble_officer_Fn"));
            checklist.setAcctbleOfficerMn(rs.getString("acctble_officer_Mi"));
            checklist.setAcctbleOfficerLn(rs.getString("acctble_officer_Ln"));
            checklist.setDocsIn(rs.getDate("docs_in"));
            checklist.setDocsOut(rs.getDate("docs_out"));
            checklist.setPosition(rs.getString("position"));
            checklist.setOffice(rs.getString("office"));
            checklist.setActPurpose(rs.getString("act_purpose"));
            checklist.setDateStarted(rs.getDate("act_started"));
            checklist.setDateEnded(rs.getDate("act_ended"));
            checklist.setDateCreated(rs.getDate("date_created"));
            checklist.setDateModified(rs.getDate("date_modified"));
            checklist.setModifiedBy(rs.getInt("modified_by"));
            checklist.setStatusId(rs.getInt("status_id"));
            checklist.setStatusName(rs.getString("status_name"));
            checklist.setDeadline(rs.getDate("deadline"));
            checklist.setApprovedBudget(rs.getDouble("approved_budget"));
            checklist.setTotReportedDisburse(rs.getDouble("tot_reported_disburse"));
            checklist.setReceivedAmt(rs.getDouble("received_amt"));
            checklist.setNotes(rs.getString("notes"));

            //checklist1
            checklist.getChecklist1().setChecklist1Id(rs.getInt("checklist1_id"));
            checklist.getChecklist1().setCopySpecOrder(rs.getInt("copy_spec_order"));
            checklist.getChecklist1().setCsoDate(rs.getDate("cso_date"));
            checklist.getChecklist1().setCsoRemarks(rs.getString("cso_remarks"));
            checklist.getChecklist1().setApprovedBudgetExpend(rs.getInt("approved_budget_expend"));
            checklist.getChecklist1().setAbeDate(rs.getDate("abe_date"));
            checklist.getChecklist1().setAbeRemarks(rs.getString("abe_remarks"));
            checklist.getChecklist1().setApprovedPurchaseReq(rs.getInt("approved_purchase_req"));
            checklist.getChecklist1().setAprDate(rs.getDate("apr_date"));
            checklist.getChecklist1().setAprRemarks(rs.getString("apr_remarks"));
            checklist.getChecklist1().setCertOfCanvass(rs.getInt("cert_of_canvass"));
            checklist.getChecklist1().setCocDate(rs.getDate("coc_date"));
            checklist.getChecklist1().setCocRemarks(rs.getString("coc_remarks"));
            checklist.getChecklist1().setLiqReport(rs.getInt("liq_report"));
            checklist.getChecklist1().setLrDate(rs.getDate("lr_date"));
            checklist.getChecklist1().setLrRemarks(rs.getString("lr_remarks"));
            checklist.getChecklist1().setReportDisburse(rs.getInt("report_disburse"));
            checklist.getChecklist1().setRdDate(rs.getDate("rd_date"));
            checklist.getChecklist1().setRdRemarks(rs.getString("rd_remarks"));
            checklist.getChecklist1().setReimburseExpenseRcpt(rs.getInt("reimburse_expense_rcpt"));
            checklist.getChecklist1().setRerDate(rs.getDate("rer_date"));
            checklist.getChecklist1().setRerRemarks(rs.getString("rer_remarks"));
            checklist.getChecklist1().setReturnCashBal(rs.getInt("return_cash_bal"));
            checklist.getChecklist1().setRcbDate(rs.getDate("rcb_date"));
            checklist.getChecklist1().setRcbRemarks(rs.getString("rcb_remarks"));

            //checklist2
            checklist.getChecklist2().setChecklist2Id(rs.getInt("checklist2_id"));
            checklist.getChecklist2().setSuppliesNmaterials(rs.getInt("supplies_n_materials"));
            checklist.getChecklist2().setSnmDate(rs.getDate("snm_date"));
            checklist.getChecklist2().setSnmSuppDocs(rs.getString("snm_remarks"));
            checklist.getChecklist2().setFoodExpenses(rs.getInt("food_expenses"));
            checklist.getChecklist2().setFeDate(rs.getDate("fe_date"));
            checklist.getChecklist2().setFeSuppDocs(rs.getString("fe_remarks"));
            checklist.getChecklist2().setTranspoFare(rs.getInt("transpo_fare"));
            checklist.getChecklist2().setTfDate(rs.getDate("tf_date"));
            checklist.getChecklist2().setTfSuppDocs(rs.getString("tf_remarks"));
            checklist.getChecklist2().setVenue(rs.getInt("venue"));
            checklist.getChecklist2().setvDate(rs.getDate("v_date"));
            checklist.getChecklist2().setvSuppDocs(rs.getString("v_remarks"));
            checklist.getChecklist2().setOtherExpenses(rs.getInt("other_expenses"));
            checklist.getChecklist2().setOeDate(rs.getDate("oe_date"));
            checklist.getChecklist2().setOeSuppDocs(rs.getString("oe_remarks"));

            //checklist3
            checklist.getChecklist3().setChecklist3Id(rs.getInt("checklist3_id"));
            checklist.getChecklist3().setProgramAct(rs.getInt("program_act"));
            checklist.getChecklist3().setPaDate(rs.getDate("pa_date"));
            checklist.getChecklist3().setPaRemarks(rs.getString("pa_remarks"));
            checklist.getChecklist3().setItineraryTravel(rs.getInt("itinerary_travel"));
            checklist.getChecklist3().setItDate(rs.getDate("it_date"));
            checklist.getChecklist3().setItRemarks(rs.getString("it_remarks"));
            checklist.getChecklist3().setApplicantsList(rs.getInt("applicants_list"));
            checklist.getChecklist3().setAlDate(rs.getDate("al_date"));
            checklist.getChecklist3().setAlRemarks(rs.getString("al_remarks"));
            checklist.getChecklist3().setNarrativeReport(rs.getInt("narrative_report"));
            checklist.getChecklist3().setNrDate(rs.getDate("nr_date"));
            checklist.getChecklist3().setNrRemarks(rs.getString("nr_remarks"));
            checklist.getChecklist3().setActPhotos(rs.getInt("act_photos"));
            checklist.getChecklist3().setApDate(rs.getDate("ap_date"));
            checklist.getChecklist3().setApRemarks(rs.getString("ap_remarks"));
            checklist.getChecklist3().setAttendanceSheet(rs.getInt("attendance_sheet"));
            checklist.getChecklist3().setAsDate(rs.getDate("as_date"));
            checklist.getChecklist3().setAsRemarks(rs.getString("as_remarks"));
   
            return checklist;
        }
    }
    
    class ChecklistProofsMapper implements RowMapper<OverallDetails.Proofs> {

        public OverallDetails.Proofs mapRow(ResultSet rs, int arg1) throws SQLException {
            OverallDetails.Proofs proof = new OverallDetails.Proofs();

            proof.setProofId(rs.getInt("proof_id"));
            proof.setProofDate(rs.getDate("date"));
            proof.setDetails(rs.getString("details"));
            proof.setSupplier(rs.getString("supplier"));
            proof.setReceipts(rs.getString("receipts"));
            proof.setAmount(rs.getDouble("amount"));
            proof.setNotes(rs.getString("notes"));
            proof.setRemarks(rs.getString("remarks"));

            return proof;
        }
    }

    class ChecklistSummaryMapper implements RowMapper<OverallDetails> {

        public OverallDetails mapRow(ResultSet rs, int arg1) throws SQLException {
            OverallDetails checklist = new OverallDetails();

            checklist.setControlId(rs.getInt("control_id"));
            checklist.setControlNo(rs.getString("control_no"));
            checklist.setDocsIn(rs.getDate("docs_in"));
            checklist.setDocsOut(rs.getDate("docs_out"));
            checklist.setNumOfDays(rs.getInt("num_of_days"));
            checklist.setAcctbleOfficer(rs.getString("acctble_officer"));
            checklist.setPosition(rs.getString("position"));
            checklist.setOffice(rs.getString("office"));
            checklist.setApprovedBudget(rs.getDouble("approved_budget"));
            checklist.setActPurpose(rs.getString("act_purpose"));
            checklist.setStatusName(rs.getString("status_name"));
            checklist.setStatusId(rs.getInt("status_id"));

            return checklist;
        }
    }

}

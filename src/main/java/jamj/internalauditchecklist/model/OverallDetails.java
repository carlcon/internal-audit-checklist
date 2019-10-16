/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jamj.internalauditchecklist.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Marianne Guinto
 */
public class OverallDetails {

    private int controlId;
    private int requestTypeId;
    private String controlNo;
    private String requestType;
    private String acctbleOfficer;
    private String acctbleOfficerFn;
    private String acctbleOfficerMn;
    private String acctbleOfficerLn;
    private String position;
    private String office;
    private String actPurpose;
    private Date dateStarted;
    private Date dateEnded;
    private Date dateCreated;
    private Date dateModified;
    private int modifiedBy;
    private int statusId;
    private String statusName;
    private Date deadline;
    private double approvedBudget;
    private double totReportedDisburse;
    private double receivedAmt;
    private String notes;
    private int preparedById;
    private int inspectedById;
    private int verifiedById;
    private String preparedBy;
    private String inspectedBy;
    private String verifiedBy;
    private Date docsIn;
    private Date docsOut;
    private int numOfDays;
    private OverallDetails.Checklist1 checklist1 = new OverallDetails.Checklist1();
    private OverallDetails.Checklist2 checklist2 = new OverallDetails.Checklist2();
    private OverallDetails.Checklist3 checklist3 = new OverallDetails.Checklist3();
    private List<OverallDetails.Proofs> proofs = new ArrayList<OverallDetails.Proofs>();

    public int getControlId() {
        return controlId;
    }

    public void setControlId(int controlId) {
        this.controlId = controlId;
    }

    public int getRequestTypeId() {
        return requestTypeId;
    }

    public void setRequestTypeId(int requestTypeId) {
        this.requestTypeId = requestTypeId;
    }

    public String getControlNo() {
        return controlNo;
    }

    public void setControlNo(String controlNo) {
        this.controlNo = controlNo;
    }

    public String getRequestType() {
        return requestType;
    }

    public void setRequestType(String requestType) {
        this.requestType = requestType;
    }

    public String getAcctbleOfficer() {
        return acctbleOfficer;
    }

    public void setAcctbleOfficer(String acctbleOfficer) {
        this.acctbleOfficer = acctbleOfficer;
    }

    public String getAcctbleOfficerFn() {
        return acctbleOfficerFn;
    }

    public void setAcctbleOfficerFn(String acctbleOfficerFn) {
        this.acctbleOfficerFn = acctbleOfficerFn;
    }

    public String getAcctbleOfficerMn() {
        return acctbleOfficerMn;
    }

    public void setAcctbleOfficerMn(String acctbleOfficerMn) {
        this.acctbleOfficerMn = acctbleOfficerMn;
    }

    public String getAcctbleOfficerLn() {
        return acctbleOfficerLn;
    }

    public void setAcctbleOfficerLn(String acctbleOfficerLn) {
        this.acctbleOfficerLn = acctbleOfficerLn;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getOffice() {
        return office;
    }

    public void setOffice(String office) {
        this.office = office;
    }

    public String getActPurpose() {
        return actPurpose;
    }

    public void setActPurpose(String actPurpose) {
        this.actPurpose = actPurpose;
    }

    public Date getDateStarted() {
        return dateStarted;
    }

    public void setDateStarted(Date dateStarted) {
        this.dateStarted = dateStarted;
    }

    public Date getDateEnded() {
        return dateEnded;
    }

    public void setDateEnded(Date dateEnded) {
        this.dateEnded = dateEnded;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public Date getDateModified() {
        return dateModified;
    }

    public void setDateModified(Date dateModified) {
        this.dateModified = dateModified;
    }

    public int getModifiedBy() {
        return modifiedBy;
    }

    public void setModifiedBy(int modifiedBy) {
        this.modifiedBy = modifiedBy;
    }

    public int getStatusId() {
        return statusId;
    }

    public void setStatusId(int statusId) {
        this.statusId = statusId;
    }

    public String getStatusName() {
        return statusName;
    }

    public void setStatusName(String statusName) {
        this.statusName = statusName;
    }

    public Date getDeadline() {
        return deadline;
    }

    public void setDeadline(Date deadline) {
        this.deadline = deadline;
    }

    public double getApprovedBudget() {
        return approvedBudget;
    }

    public void setApprovedBudget(double approvedBudget) {
        this.approvedBudget = approvedBudget;
    }

    public double getTotReportedDisburse() {
        return totReportedDisburse;
    }

    public void setTotReportedDisburse(double totReportedDisburse) {
        this.totReportedDisburse = totReportedDisburse;
    }

    public double getReceivedAmt() {
        return receivedAmt;
    }

    public void setReceivedAmt(double receivedAmt) {
        this.receivedAmt = receivedAmt;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public int getPreparedById() {
        return preparedById;
    }

    public void setPreparedById(int preparedById) {
        this.preparedById = preparedById;
    }

    public int getInspectedById() {
        return inspectedById;
    }

    public void setInspectedById(int inspectedById) {
        this.inspectedById = inspectedById;
    }

    public int getVerifiedById() {
        return verifiedById;
    }

    public void setVerifiedById(int verifiedById) {
        this.verifiedById = verifiedById;
    }

    public String getPreparedBy() {
        return preparedBy;
    }

    public void setPreparedBy(String preparedBy) {
        this.preparedBy = preparedBy;
    }

    public String getInspectedBy() {
        return inspectedBy;
    }

    public void setInspectedBy(String inspectedBy) {
        this.inspectedBy = inspectedBy;
    }

    public String getVerifiedBy() {
        return verifiedBy;
    }

    public void setVerifiedBy(String verifiedBy) {
        this.verifiedBy = verifiedBy;
    }

    public Date getDocsIn() {
        return docsIn;
    }

    public void setDocsIn(Date docsIn) {
        this.docsIn = docsIn;
    }

    public Date getDocsOut() {
        return docsOut;
    }

    public void setDocsOut(Date docsOut) {
        this.docsOut = docsOut;
    }

    public int getNumOfDays() {
        return numOfDays;
    }

    public void setNumOfDays(int numOfDays) {
        this.numOfDays = numOfDays;
    }

    public Checklist1 getChecklist1() {
        return checklist1;
    }

    public void setChecklist1(Checklist1 checklist1) {
        this.checklist1 = checklist1;
    }

    public Checklist2 getChecklist2() {
        return checklist2;
    }

    public void setChecklist2(Checklist2 checklist2) {
        this.checklist2 = checklist2;
    }

    public Checklist3 getChecklist3() {
        return checklist3;
    }

    public void setChecklist3(Checklist3 checklist3) {
        this.checklist3 = checklist3;
    }

    public List<Proofs> getProofs() {
        return proofs;
    }

    public void setProofs(List<Proofs> proofs) {
        this.proofs = proofs;
    }

    public static class Checklist1 {

        private int checklist1Id;
        private int controlId;
        private int statusId;
        private int copySpecOrder;
        private Date csoDate;
        private String csoRemarks;
        private int approvedBudgetExpend;
        private Date abeDate;
        private String abeRemarks;
        private int approvedPurchaseReq;
        private Date aprDate;
        private String aprRemarks;
        private int certOfCanvass;
        private Date cocDate;
        private String cocRemarks;
        private int liqReport;
        private Date lrDate;
        private String lrRemarks;
        private int reportDisburse;
        private Date rdDate;
        private String rdRemarks;
        private int reimburseExpenseRcpt;
        private Date rerDate;
        private String rerRemarks;
        private int returnCashBal;
        private Date rcbDate;
        private String rcbRemarks;

        public int getChecklist1Id() {
            return checklist1Id;
        }

        public void setChecklist1Id(int checklist1Id) {
            this.checklist1Id = checklist1Id;
        }

        public int getControlId() {
            return controlId;
        }

        public void setControlId(int controlId) {
            this.controlId = controlId;
        }

        public int getStatusId() {
            return statusId;
        }

        public void setStatusId(int statusId) {
            this.statusId = statusId;
        }

        public int getCopySpecOrder() {
            return copySpecOrder;
        }

        public void setCopySpecOrder(int copySpecOrder) {
            this.copySpecOrder = copySpecOrder;
        }

        public Date getCsoDate() {
            return csoDate;
        }

        public void setCsoDate(Date csoDate) {
            this.csoDate = csoDate;
        }

        public String getCsoRemarks() {
            return csoRemarks;
        }

        public void setCsoRemarks(String csoRemarks) {
            this.csoRemarks = csoRemarks;
        }

        public int getApprovedBudgetExpend() {
            return approvedBudgetExpend;
        }

        public void setApprovedBudgetExpend(int approvedBudgetExpend) {
            this.approvedBudgetExpend = approvedBudgetExpend;
        }

        public Date getAbeDate() {
            return abeDate;
        }

        public void setAbeDate(Date abeDate) {
            this.abeDate = abeDate;
        }

        public String getAbeRemarks() {
            return abeRemarks;
        }

        public void setAbeRemarks(String abeRemarks) {
            this.abeRemarks = abeRemarks;
        }

        public int getApprovedPurchaseReq() {
            return approvedPurchaseReq;
        }

        public void setApprovedPurchaseReq(int approvedPurchaseReq) {
            this.approvedPurchaseReq = approvedPurchaseReq;
        }

        public Date getAprDate() {
            return aprDate;
        }

        public void setAprDate(Date aprDate) {
            this.aprDate = aprDate;
        }

        public String getAprRemarks() {
            return aprRemarks;
        }

        public void setAprRemarks(String aprRemarks) {
            this.aprRemarks = aprRemarks;
        }

        public int getCertOfCanvass() {
            return certOfCanvass;
        }

        public void setCertOfCanvass(int certOfCanvass) {
            this.certOfCanvass = certOfCanvass;
        }

        public Date getCocDate() {
            return cocDate;
        }

        public void setCocDate(Date cocDate) {
            this.cocDate = cocDate;
        }

        public String getCocRemarks() {
            return cocRemarks;
        }

        public void setCocRemarks(String cocRemarks) {
            this.cocRemarks = cocRemarks;
        }

        public int getLiqReport() {
            return liqReport;
        }

        public void setLiqReport(int liqReport) {
            this.liqReport = liqReport;
        }

        public Date getLrDate() {
            return lrDate;
        }

        public void setLrDate(Date lrDate) {
            this.lrDate = lrDate;
        }

        public String getLrRemarks() {
            return lrRemarks;
        }

        public void setLrRemarks(String lrRemarks) {
            this.lrRemarks = lrRemarks;
        }

        public int getReportDisburse() {
            return reportDisburse;
        }

        public void setReportDisburse(int reportDisburse) {
            this.reportDisburse = reportDisburse;
        }

        public Date getRdDate() {
            return rdDate;
        }

        public void setRdDate(Date rdDate) {
            this.rdDate = rdDate;
        }

        public String getRdRemarks() {
            return rdRemarks;
        }

        public void setRdRemarks(String rdRemarks) {
            this.rdRemarks = rdRemarks;
        }

        public int getReimburseExpenseRcpt() {
            return reimburseExpenseRcpt;
        }

        public void setReimburseExpenseRcpt(int reimburseExpenseRcpt) {
            this.reimburseExpenseRcpt = reimburseExpenseRcpt;
        }

        public Date getRerDate() {
            return rerDate;
        }

        public String getRerRemarks() {
            return rerRemarks;
        }

        public void setRerRemarks(String rerRemarks) {
            this.rerRemarks = rerRemarks;
        }

        public void setRerDate(Date rerDate) {
            this.rerDate = rerDate;
        }

        public int getReturnCashBal() {
            return returnCashBal;
        }

        public void setReturnCashBal(int returnCashBal) {
            this.returnCashBal = returnCashBal;
        }

        public Date getRcbDate() {
            return rcbDate;
        }

        public void setRcbDate(Date rcbDate) {
            this.rcbDate = rcbDate;
        }

        public String getRcbRemarks() {
            return rcbRemarks;
        }

        public void setRcbRemarks(String rcbRemarks) {
            this.rcbRemarks = rcbRemarks;
        }

    }

    public static class Checklist2 {

        private int checklist2Id;
        private int controlId;
        private int statusId;
        private int suppliesNmaterials;
        private Date snmDate;
        private String snmSuppDocs;
        private int foodExpenses;
        private Date feDate;
        private String feSuppDocs;
        private int transpoFare;
        private Date tfDate;
        private String tfSuppDocs;
        private int venue;
        private Date vDate;
        private String vSuppDocs;
        private int otherExpenses;
        private Date oeDate;
        private String oeSuppDocs;

        public int getChecklist2Id() {
            return checklist2Id;
        }

        public void setChecklist2Id(int checklist2Id) {
            this.checklist2Id = checklist2Id;
        }

        public int getControlId() {
            return controlId;
        }

        public void setControlId(int controlId) {
            this.controlId = controlId;
        }

        public int getStatusId() {
            return statusId;
        }

        public void setStatusId(int statusId) {
            this.statusId = statusId;
        }

        public int getSuppliesNmaterials() {
            return suppliesNmaterials;
        }

        public void setSuppliesNmaterials(int suppliesNmaterials) {
            this.suppliesNmaterials = suppliesNmaterials;
        }

        public Date getSnmDate() {
            return snmDate;
        }

        public void setSnmDate(Date snmDate) {
            this.snmDate = snmDate;
        }

        public String getSnmSuppDocs() {
            return snmSuppDocs;
        }

        public void setSnmSuppDocs(String snmSuppDocs) {
            this.snmSuppDocs = snmSuppDocs;
        }

        public int getFoodExpenses() {
            return foodExpenses;
        }

        public void setFoodExpenses(int foodExpenses) {
            this.foodExpenses = foodExpenses;
        }

        public Date getFeDate() {
            return feDate;
        }

        public void setFeDate(Date feDate) {
            this.feDate = feDate;
        }

        public String getFeSuppDocs() {
            return feSuppDocs;
        }

        public void setFeSuppDocs(String feSuppDocs) {
            this.feSuppDocs = feSuppDocs;
        }

        public int getTranspoFare() {
            return transpoFare;
        }

        public void setTranspoFare(int transpoFare) {
            this.transpoFare = transpoFare;
        }

        public Date getTfDate() {
            return tfDate;
        }

        public void setTfDate(Date tfDate) {
            this.tfDate = tfDate;
        }

        public String getTfSuppDocs() {
            return tfSuppDocs;
        }

        public void setTfSuppDocs(String tfSuppDocs) {
            this.tfSuppDocs = tfSuppDocs;
        }

        public int getVenue() {
            return venue;
        }

        public void setVenue(int venue) {
            this.venue = venue;
        }

        public Date getvDate() {
            return vDate;
        }

        public void setvDate(Date vDate) {
            this.vDate = vDate;
        }

        public String getvSuppDocs() {
            return vSuppDocs;
        }

        public void setvSuppDocs(String vSuppDocs) {
            this.vSuppDocs = vSuppDocs;
        }

        public int getOtherExpenses() {
            return otherExpenses;
        }

        public void setOtherExpenses(int otherExpenses) {
            this.otherExpenses = otherExpenses;
        }

        public Date getOeDate() {
            return oeDate;
        }

        public void setOeDate(Date oeDate) {
            this.oeDate = oeDate;
        }

        public String getOeSuppDocs() {
            return oeSuppDocs;
        }

        public void setOeSuppDocs(String oeSuppDocs) {
            this.oeSuppDocs = oeSuppDocs;
        }
    }

    public static class Checklist3 {

        private int checklist3Id;
        private int controlId;
        private int statusId;
        private int programAct;
        private Date paDate;
        private String paRemarks;
        private int itineraryTravel;
        private Date itDate;
        private String itRemarks;
        private int applicantsList;
        private Date alDate;
        private String alRemarks;
        private int narrativeReport;
        private Date nrDate;
        private String nrRemarks;
        private int actPhotos;
        private Date apDate;
        private String apRemarks;
        private int attendanceSheet;
        private Date asDate;
        private String asRemarks;

        public int getChecklist3Id() {
            return checklist3Id;
        }

        public void setChecklist3Id(int checklist3Id) {
            this.checklist3Id = checklist3Id;
        }

        public int getControlId() {
            return controlId;
        }

        public void setControlId(int controlId) {
            this.controlId = controlId;
        }

        public int getStatusId() {
            return statusId;
        }

        public void setStatusId(int statusId) {
            this.statusId = statusId;
        }

        public int getProgramAct() {
            return programAct;
        }

        public void setProgramAct(int programAct) {
            this.programAct = programAct;
        }

        public Date getPaDate() {
            return paDate;
        }

        public void setPaDate(Date paDate) {
            this.paDate = paDate;
        }

        public String getPaRemarks() {
            return paRemarks;
        }

        public void setPaRemarks(String paRemarks) {
            this.paRemarks = paRemarks;
        }

        public int getItineraryTravel() {
            return itineraryTravel;
        }

        public void setItineraryTravel(int itineraryTravel) {
            this.itineraryTravel = itineraryTravel;
        }

        public Date getItDate() {
            return itDate;
        }

        public void setItDate(Date itDate) {
            this.itDate = itDate;
        }

        public String getItRemarks() {
            return itRemarks;
        }

        public void setItRemarks(String itRemarks) {
            this.itRemarks = itRemarks;
        }

        public int getApplicantsList() {
            return applicantsList;
        }

        public void setApplicantsList(int applicantsList) {
            this.applicantsList = applicantsList;
        }

        public Date getAlDate() {
            return alDate;
        }

        public void setAlDate(Date alDate) {
            this.alDate = alDate;
        }

        public String getAlRemarks() {
            return alRemarks;
        }

        public void setAlRemarks(String alRemarks) {
            this.alRemarks = alRemarks;
        }

        public int getNarrativeReport() {
            return narrativeReport;
        }

        public void setNarrativeReport(int narrativeReport) {
            this.narrativeReport = narrativeReport;
        }

        public Date getNrDate() {
            return nrDate;
        }

        public void setNrDate(Date nrDate) {
            this.nrDate = nrDate;
        }

        public String getNrRemarks() {
            return nrRemarks;
        }

        public void setNrRemarks(String nrRemarks) {
            this.nrRemarks = nrRemarks;
        }

        public int getActPhotos() {
            return actPhotos;
        }

        public void setActPhotos(int actPhotos) {
            this.actPhotos = actPhotos;
        }

        public Date getApDate() {
            return apDate;
        }

        public void setApDate(Date apDate) {
            this.apDate = apDate;
        }

        public String getApRemarks() {
            return apRemarks;
        }

        public void setApRemarks(String apRemarks) {
            this.apRemarks = apRemarks;
        }

        public int getAttendanceSheet() {
            return attendanceSheet;
        }

        public void setAttendanceSheet(int attendanceSheet) {
            this.attendanceSheet = attendanceSheet;
        }

        public Date getAsDate() {
            return asDate;
        }

        public void setAsDate(Date asDate) {
            this.asDate = asDate;
        }

        public String getAsRemarks() {
            return asRemarks;
        }

        public void setAsRemarks(String asRemarks) {
            this.asRemarks = asRemarks;
        }
    }

    public static class Proofs {

        private int proofId;
        private int controlId;
        private int statusId;
        private Date proofDate;
        private String supplier;
        private String receipts;
        private String details;
        private double amount;
        private String notes;
        private String remarks;

        public int getProofId() {
            return proofId;
        }

        public void setProofId(int proofId) {
            this.proofId = proofId;
        }

        public int getControlId() {
            return controlId;
        }

        public void setControlId(int controlId) {
            this.controlId = controlId;
        }

        public Date getProofDate() {
            return proofDate;
        }

        public void setProofDate(Date proofDate) {
            this.proofDate = proofDate;
        }

        public String getSupplier() {
            return supplier;
        }

        public void setSupplier(String supplier) {
            this.supplier = supplier;
        }

        public String getReceipts() {
            return receipts;
        }

        public void setReceipts(String receipts) {
            this.receipts = receipts;
        }

        public String getDetails() {
            return details;
        }

        public void setDetails(String details) {
            this.details = details;
        }

        public double getAmount() {
            return amount;
        }

        public void setAmount(double amount) {
            this.amount = amount;
        }

        public String getNotes() {
            return notes;
        }

        public void setNotes(String notes) {
            this.notes = notes;
        }

        public int getStatusId() {
            return statusId;
        }

        public void setStatusId(int statusId) {
            this.statusId = statusId;
        }

        public String getRemarks() {
            return remarks;
        }

        public void setRemarks(String remarks) {
            this.remarks = remarks;
        }

    } //end of class proofs
} //end of class overall details

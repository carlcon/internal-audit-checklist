
$(document).ready(function () {
    var onEditMode = false;
    var requestType;
    var countAuditFindings = 1;
    initializeForms();

    $("#liEmergency").hide();

    $("#tabs").tabs({
        beforeActivate: function (event, ui) {
            if (onEditMode) {
                var actv = $("#tabs").tabs("option", "active");
                alert(ui.newPanel.attr('id'));
                if (ui.newPanel.attr('id') == "tabs-1" || ui.newPanel.attr('id') == "tabs-3") { //not audit findings tab
                    event.preventDefault();
                    alert("You are on edit mode!");
                }
            }
            else {

            }
        }
    });

    var dialog = $("#dialogNewChecklist").dialog({
        autoOpen: false,
        height: 200,
        width: 350,
        modal: true,
        buttons: {
            "Select": function () {
                requestType = $("#selectRequestType").val();
                dialog.dialog("close");
                $("#liCheklist").show();


                $("#tabs").tabs("option", "active", 1);
                clearChecklistFields();
                $("#btnSaveChecklist").show();
                $("#btnCancelChecklist").show();
                $("#btnClearChecklist").show();
                $("#addAuditFindings").parents('tr').show();

                if (currentRoleId !== 1 || currentRoleId !== 2) {
                    $("#btnNoteChecklist").hide();
                }
                if (currentRoleId !== 1 || currentRoleId !== 3) {
                    $("#btnInspectChecklist").hide();
                }
                $("#btnEditChecklist").hide();

                enableChecklistFields();
                $("#btnSaveChecklist").data('id', 0);
                $("#btnInspectChecklist").data('id', 0);
                $("#btnNoteChecklist").data('id', 0);
                onEditMode = true;
            },
            "Cancel": function () {
                dialog.dialog("close");
            }
        },
        close: function () {
            //form[ 0 ].reset();

        }
    });

    $(document).on('click', '#btnAddChecklist', function (e) {
        dialog.dialog("open");
        $("#selectRequestType").change(function () {
            $("#selectRequestType option:first").attr('disabled', 'disabled');

        });
    });

    $(document).on('click', '#btnEditChecklist', function (e) {
        e.preventDefault();
        $("#btnSaveChecklist").show();
        $("#btnCancelChecklist").show();
        $("#btnClearChecklist").show();
        $("#addAuditFindings").parents('tr').show();
        $("#btnEditChecklist").show();
        if (currentRoleId !== 1 || currentRoleId !== 2) {
            $("#btnNoteChecklist").hide();
        }
        if (currentRoleId !== 1 || currentRoleId !== 3) {
            $("#btnInspectChecklist").hide();
        }
        $("#btnEditChecklist").hide();


        enableChecklistFields();
        onEditMode = true;

    });

    $(document).on('click', '.btnViewChecklist', function (e) {
        //onEditMode = false;
        $("#liCheklist").show();
        $("#liAuditFindings").show();
        $("#tabs").tabs("option", "active", 1);
        $("#btnSaveChecklist").hide();
        $("#btnCancelChecklist").hide();
        $("#btnClearChecklist").hide();
        if (currentRoleId === 1 || currentRoleId === 2) {
            $("#btnNoteChecklist").show();
        }
        if (currentRoleId === 1 || currentRoleId === 3) {
            $("#btnInspectChecklist").show();
        }
        $("#btnEditChecklist").show();

        clearChecklistFields();

        $("#btnSaveChecklist").data('id', $(this).data("id"));
        $("#btnInspectChecklist").data('id', $(this).data("id"));
        $("#btnNoteChecklist").data('id', $(this).data("id"));
        $("#btnPrintChecklist").data('id', $(this).data("id"));
        
        var checklist = {
            controlId: $(this).data("id")
        };

        getChecklistById(checklist);

    });

    $(document).on('click', '#btnCancelChecklist', function (e) {
        e.preventDefault();
        onEditMode = false;
        clearChecklistFields();
        $("#btnSaveChecklist").hide();
        $("#btnCancelChecklist").hide();
        $("#btnClearChecklist").hide();
        $("#addAuditFindings").parents('tr').hide();
        if (currentRoleId === 1 || currentRoleId === 2) {
            $("#btnNoteChecklist").show();
        }
        if (currentRoleId === 1 || currentRoleId === 3) {
            $("#btnInspectChecklist").show();
        }
        $("#btnEditChecklist").show();

        disableChecklistFields();

        var checklist = {
            controlId: $("#btnSaveChecklist").data('id')
        };

        countAuditFindings = getChecklistById(checklist);
//        $("#tabs").tabs("option", "active", 0);
//        $("#liCheklist").hide();
//        $("#liAuditFindings").hide();
    });

    $(document).on('click', '#btnClearChecklist', function (e) {
        e.preventDefault();
        clearChecklistFields();
    });

    $(document).on('click', '#btnSaveChecklist', function (e) {
        e.preventDefault();
        var aoProof = [];
        for (var i = 0; i < $(".dateAF").length; i++) {
            aoProof.push({
                proofDate: $(".dateAF")[i].value,
                details: $(".detailsAF")[i].value,
                supplier: $(".supplierAF")[i].value,
                receipts: $(".receiptsAF")[i].value,
                amount: $(".amountAF")[i].value,
                notes: $(".notesAF")[i].value,
                remarks: $(".remarksAF")[i].value
            });
        }

        var checklist = {
            controlId: parseInt($(this).data('id')),
            requestType: requestType,
            acctbleOfficerFn: $("#inputFirstNameAO").val(),
            acctbleOfficerMn: $("#inputMiddleInitialAO").val(),
            acctbleOfficerLn: $("#inputLastNameAO").val(),
            docsIn: $("#inputDocsIn").val(),
            docsOut: $("#inputDocsOut").val(),
            office: $("#inputOffice").val(),
            position: $("#inputDesignation").val(),
            actPurpose: $("#inputPurposeOfActivity").val(),
            dateStarted: $("#inputActivityStarted").val(),
            dateEnded: $("#inputActivityEnded").val(),
            deadline: $("#inputDeadline").val(),
            approvedBudget: $("#inputApprovedBudget").val(),
            receivedAmt: $("#inputReceivedAmount").val(),
            totReportedDisburse: $("#inputTotalDisbursement").val(),
            //table 1
            checklist1: {
                csoDate: $("#dateCSO").val(),
                csoRemarks: $("#inputRemarksCSO").val(),
                copySpecOrder: $("#checkboxCSO").prop("checked") ? 1 : 0,
                abeDate: $("#dateABE").val(),
                abeRemarks: $("#inputRemarksABE").val(),
                approvedBudgetExpend: $("#checkboxABE").prop("checked") ? 1 : 0,
                aprDate: $("#dateAPR").val(),
                aprRemarks: $("#inputRemarksAPR").val(),
                approvedPurchaseReq: $("#checkboxAPR").prop("checked") ? 1 : 0,
                cocDate: $("#dateCOC").val(),
                cocRemarks: $("#inputRemarksCOC").val(),
                certOfCanvass: $("#checkboxCOC").prop("checked") ? 1 : 0,
                lrDate: $("#dateLR").val(),
                lrRemarks: $("#inputRemarksLR").val(),
                liqReport: $("#checkboxLR").prop("checked") ? 1 : 0,
                rdDate: $("#dateRD").val(),
                rdRemarks: $("#inputRemarksRD").val(),
                reportDisburse: $("#checkboxRD").prop("checked") ? 1 : 0,
                rerDate: $("#dateRER").val(),
                rerRemarks: $("#inputRemarksRER").val(),
                reimburseExpenseRcpt: $("#checkboxRER").prop("checked") ? 1 : 0,
                rcbDate: $("#dateRCB").val(),
                rcbRemarks: $("#inputRemarksRCB").val(),
                returnCashBal: $("#checkboxRCB").prop("checked") ? 1 : 0
            },
            //table 2
            checklist2: {
                snmDate: $("#dateSAM").val(),
                snmSuppDocs: $("#inputRemarksSAM").val(),
                suppliesNmaterials: $("#checkboxSAM").prop("checked") ? 1 : 0,
                feDate: $("#dateFE").val(),
                feSuppDocs: $("#inputRemarksFE").val(),
                foodExpenses: $("#checkboxFE").prop("checked") ? 1 : 0,
                tfDate: $("#dateTF").val(),
                tfSuppDocs: $("#inputRemarksTF").val(),
                transpoFare: $("#checkboxTF").prop("checked") ? 1 : 0,
                vDate: $("#dateVAL").val(),
                vSuppDocs: $("#inputRemarksVAL").val(),
                venue: $("#checkboxVAL").prop("checked") ? 1 : 0,
                oeDate: $("#dateOE").val(),
                oeSuppDocs: $("#inputRemarksOE").val(),
                otherExpenses: $("#checkboxOE").prop("checked") ? 1 : 0
            },
            //table 3
            checklist3: {
                paDate: $("#datePOA").val(),
                paRemarks: $("#inputRemarksPOA").val(),
                programAct: $("#checkboxPOA").prop("checked") ? 1 : 0,
                itDate: $("#dateIOT").val(),
                itRemarks: $("#inputRemarksIOT").val(),
                itineraryTravel: $("#checkboxIOT").prop("checked") ? 1 : 0,
                alDate: $("#dateLOP").val(),
                alRemarks: $("#inputRemarksLOP").val(),
                applicantsList: $("#checkboxLOP").prop("checked") ? 1 : 0,
                nrDate: $("#dateROP").val(),
                nrRemarks: $("#inputRemarksROP").val(),
                narrativeReport: $("#checkboxROP").prop("checked") ? 1 : 0,
                apDate: $("#datePDA").val(),
                apRemarks: $("#inputRemarksPDA").val(),
                actPhotos: $("#checkboxPDA").prop("checked") ? 1 : 0,
                asDate: $("#dateAS").val(),
                asRemarks: $("#inputRemarksAS").val(),
                attendanceSheet: $("#checkboxAS").prop("checked") ? 1 : 0
            },
            //table 4
            proofs: aoProof

        };

        $.ajax({
            url: "saveChecklist",
            type: "POST",
            contentType: "application/json",
            data: JSON.stringify(checklist), //Stringified Json Object
            dataType: 'json',
            success: function (response) {
                alert(response.userId);
                if (response.userId > 0)
                    alert("saved to database");
                table.ajax.reload();
            }
        });

        $("#btnSaveChecklist").hide();
        $("#btnCancelChecklist").hide();
        $("#btnClearChecklist").hide();
        $("#addAuditFindings").parents('tr').hide();
        if (currentRoleId === 1 || currentRoleId === 2) {
            $("#btnNoteChecklist").show();
        }
        if (currentRoleId === 1 || currentRoleId === 3) {
            $("#btnInspectChecklist").show();
        }
        $("#btnEditChecklist").show();

        disableChecklistFields();
        onEditMode = false;
    });

    var table = $("#tableSummary").DataTable({
        "bJQueryUI": true,
        "deferRender": true,
        "ajax": {
            "url": "getChecklist",
            "dataSrc": ""
        },
        "columns": [
            {"data": "controlId",
                "render": function (data, type, row) {
                    return "<button class=\"btnViewChecklist\"  data-id=\"" + data + "\"><i class=\"fas fa-eye\"></i></button>" +
                            "<button class=\"btnDeleteChecklist\"  data-id=\"" + data + "\"><i class=\"far fa-trash-alt\"></i></button>";
                }
            },
            {"data": "controlNo"},
            {"data": "docsIn"},
            {"data": "docsOut"},
            {"data": "numOfDays"},
            {"data": "acctbleOfficer"},
            {"data": "position"},
            {"data": "office"},
            {"data": "approvedBudget"},
            {"data": "actPurpose"},
            {"data": "statusName"}
        ],
        "columnDefs": [
            {
                targets: 0,
                className: 'text-center'
            }
        ]

    });

    $(document).on('click', '#addAuditFindings', function (e) {
        $(this).parents('tr').before('<tr> <td> ' + ++countAuditFindings + ' </td><td> <input type="text" class="form-control form-control-sm dateAF"> </td><td> <input type="text" class="form-control form-control-sm detailsAF"> </td><td> <input type="text" class="form-control form-control-sm supplierAF"> </td><td> <input type="text" class="form-control form-control-sm receiptsAF"> </td> <td> <input type="text" class="form-control form-control-sm amountAF"> </td><td> <input type="text" class="form-control form-control-sm notesAF"> </td> <td> <input type="text" class="form-control form-control-sm remarksAF"> </td> </tr>');
        $(".dateAF").datepicker({
            dateFormat: 'yy-mm-dd'
        });
        if (countAuditFindings == 2)
            $("#removeAuditFindings").show();
    });

    $(document).on('click', '#removeAuditFindings', function (e) {
        $(this).parents('tr').prev().remove();
        countAuditFindings--;
        if (countAuditFindings == 1)
            $("#removeAuditFindings").hide();
    });

    $(document).on('click', '#btnInspectChecklist', function (e) {
        e.preventDefault();
        var overallDetails = {
            controlId: $(this).data('id')
        };
        $("#dialogInspectChecklist").data("overallDetails", overallDetails);

        dialogInspectChecklist.dialog("open");


    });

    var dialogInspectChecklist = $("#dialogInspectChecklist").dialog({
        autoOpen: false,
        resizable: false,
        height: 250,
        width: 400,
        modal: true,
        buttons: {
            "Yes": function () {

                var overallDetails = $("#dialogInspectChecklist").data("overallDetails");

                $.ajax({
                    url: "inspectChecklist",
                    type: "POST",
                    contentType: "application/json",
                    data: JSON.stringify(overallDetails), //Stringified Json Object
                    dataType: 'json',
                    success: function (response) {

                        if (response.userId > 0) {
                            alert("This checklist has been inspected");
                            table.ajax.reload();
                        }
                    }
                });

                dialogInspectChecklist.dialog("close");

            },
            "Cancel": function () {
                dialogInspectChecklist.dialog("close");
            }
        },
        close: function () {
            dialogInspectChecklist.dialog("close");
        }
    });

    $(document).on('click', '#btnNoteChecklist', function (e) {
        e.preventDefault();
        var overallDetails = {
            controlId: $(this).data('id')
        };
        $("#dialogNoteChecklist").data("overallDetails", overallDetails);

        dialogNoteChecklist.dialog("open");


    });

    var dialogNoteChecklist = $("#dialogNoteChecklist").dialog({
        autoOpen: false,
        resizable: false,
        height: 250,
        width: 400,
        modal: true,
        buttons: {
            "Yes": function () {

                var overallDetails = $("#dialogNoteChecklist").data("overallDetails");

                $.ajax({
                    url: "noteChecklist",
                    type: "POST",
                    contentType: "application/json",
                    data: JSON.stringify(overallDetails), //Stringified Json Object
                    dataType: 'json',
                    success: function (response) {

                        if (response.userId > 0) {
                            alert("This Checklist has been noted");
                            table.ajax.reload();
                        }
                    }
                });

                dialogNoteChecklist.dialog("close");

            },
            "Cancel": function () {
                dialogNoteChecklist.dialog("close");
            }
        },
        close: function () {
            dialogNoteChecklist.dialog("close");
        }
    });

    $(document).on('click', '.btnDeleteChecklist', function (e) {
        var overallDetails = {
            controlId: $(this).data('id')
        };
        $("#dialogDeleteChecklist").data("overallDetails", overallDetails);

        dialogDeleteChecklist.dialog("open");

    });

    var dialogDeleteChecklist = $("#dialogDeleteChecklist").dialog({
        autoOpen: false,
        resizable: false,
        height: 250,
        width: 400,
        modal: true,
        buttons: {
            "Yes": function () {

                var overallDetails = $("#dialogDeleteChecklist").data("overallDetails");

                $.ajax({
                    url: "deleteChecklist",
                    type: "POST",
                    contentType: "application/json",
                    data: JSON.stringify(overallDetails), //Stringified Json Object
                    dataType: 'json',
                    success: function (response) {

                        if (response.userId > 0) {
                            alert("deleted to database");
                            table.ajax.reload();
                        }
                    }
                });

                dialogDeleteChecklist.dialog("close");

            },
            "Cancel": function () {
                dialogDeleteChecklist.dialog("close");
            }
        },
        close: function () {
            dialogDeleteChecklist.dialog("close");
        }
    });

    $(document).on('click', '#btnPrintChecklist', function (e) {
        e.preventDefault();
//        var overallDetails = {
//            controlId: $(this).data('id')
//        };

        window.location.href = "downloadExcel?id=" + $(this).data('id');

    });

});

function initializeForms() {

    $("#inputDocsIn").datepicker({
        dateFormat: 'yy-mm-dd'
    });

    $("#inputDocsOut").datepicker({
        dateFormat: 'yy-mm-dd'
    });

    $("#inputActivityStarted").datepicker({
        dateFormat: 'yy-mm-dd'
    });

    $("#inputActivityEnded").datepicker({
        dateFormat: 'yy-mm-dd'
    });

    $("#inputDeadline").datepicker({
        dateFormat: 'yy-mm-dd'
    });

    $("#dateCSO").datepicker({
        dateFormat: 'yy-mm-dd'
    });

    $("#dateABE").datepicker({
        dateFormat: 'yy-mm-dd'
    });

    $("#dateAPR").datepicker({
        dateFormat: 'yy-mm-dd'
    });

    $("#dateCOC").datepicker({
        dateFormat: 'yy-mm-dd'
    });

    $("#inputDeadline").datepicker({
        dateFormat: 'yy-mm-dd'
    });

    $("#dateLR").datepicker({
        dateFormat: 'yy-mm-dd'
    });

    $("#dateRD").datepicker({
        dateFormat: 'yy-mm-dd'
    });

    $("#dateRER").datepicker({
        dateFormat: 'yy-mm-dd'
    });

    $("#dateRD").datepicker({
        dateFormat: 'yy-mm-dd'
    });

    $("#dateRCB").datepicker({
        dateFormat: 'yy-mm-dd'
    });

    $("#dateSAM").datepicker({
        dateFormat: 'yy-mm-dd'
    });

    $("#dateFE").datepicker({
        dateFormat: 'yy-mm-dd'
    });

    $("#dateTF").datepicker({
        dateFormat: 'yy-mm-dd'
    });

    $("#dateVAL").datepicker({
        dateFormat: 'yy-mm-dd'
    });

    $("#dateOE").datepicker({
        dateFormat: 'yy-mm-dd'
    });

    $("#datePOA").datepicker({
        dateFormat: 'yy-mm-dd'
    });

    $("#dateIOT").datepicker({
        dateFormat: 'yy-mm-dd'
    });

    $("#dateLOP").datepicker({
        dateFormat: 'yy-mm-dd'
    });

    $("#dateROP").datepicker({
        dateFormat: 'yy-mm-dd'
    });

    $("#datePDA").datepicker({
        dateFormat: 'yy-mm-dd'
    });

    $("#dateAS").datepicker({
        dateFormat: 'yy-mm-dd'
    });

    $("#datePOA").datepicker({
        dateFormat: 'yy-mm-dd'
    });

    $(".dateAF").datepicker({
        dateFormat: 'yy-mm-dd'
    });

}

function getChecklistById(checklist) {
    var countAuditFindings;
    $.ajax({
        url: "getChecklistById",
        type: "POST",
        contentType: "application/json",
        data: JSON.stringify(checklist), //Stringified Json Object
        dataType: 'json',
        success: function (response) {

            // overall details
            $("#inputControlNumber").val(response.controlNo);
            $("#inputFirstNameAO").val(response.acctbleOfficerFn);
            $("#inputMiddleInitialAO").val(response.acctbleOfficerMn);
            $("#inputLastNameAO").val(response.acctbleOfficerLn);
            $("#inputDocsIn").val(response.docsIn);
            $("#inputDocsOut").val(response.docsOut);
            $("#inputOffice").val(response.office);
            $("#inputDesignation").val(response.position);
            $("#inputPurposeOfActivity").val(response.actPurpose);
            $("#inputActivityStarted").val(response.dateStarted);
            $("#inputActivityEnded").val(response.dateEnded);
            $("#inputDeadline").val(response.deadline);
            $("#inputApprovedBudget").val(response.approvedBudget);
            $("#inputReceivedAmount").val(response.receivedAmt);
            $("#inputTotalDisbursement").val(response.totReportedDisburse);

            //table 1
            $("#dateCSO").val(response.checklist1.csoDate);
            $("#inputRemarksCSO").val(response.checklist1.csoRemarks);
            $("#checkboxCSO").prop('checked', response.checklist1.copySpecOrder == 1 ? true : false);

            $("#dateABE").val(response.checklist1.abeDate);
            $("#inputRemarksABE").val(response.checklist1.abeRemarks);
            $("#checkboxABE").prop('checked', response.checklist1.approvedBudgetExpend == 1 ? true : false);

            $("#dateAPR").val(response.checklist1.aprDate);
            $("#inputRemarksAPR").val(response.checklist1.aprRemarks);
            $("#checkboxAPR").prop('checked', response.checklist1.approvedPurchaseReq == 1 ? true : false);

            $("#dateCOC").val(response.checklist1.cocDate);
            $("#inputRemarksCOC").val(response.checklist1.cocRemarks);
            $("#checkboxCOC").prop('checked', response.checklist1.certOfCanvass == 1 ? true : false);

            $("#dateLR").val(response.checklist1.lrDate);
            $("#inputRemarksLR").val(response.checklist1.lrRemarks);
            $("#checkboxLR").prop('checked', response.checklist1.liqReport == 1 ? true : false);

            $("#dateRD").val(response.checklist1.rdDate);
            $("#inputRemarksRD").val(response.checklist1.rdRemarks);
            $("#checkboxRD").prop('checked', response.checklist1.reportDisburse === 1 ? true : false);

            $("#dateRER").val(response.checklist1.rerDate);
            $("#inputRemarksRER").val(response.checklist1.rerRemarks);
            $("#checkboxRER").prop('checked', response.checklist1.reimburseExpenseRcpt == 1 ? true : false);

            $("#dateRCB").val(response.checklist1.rcbDate);
            $("#inputRemarksRCB").val(response.checklist1.rcbRemarks);
            $("#checkboxRCB").prop('checked', response.checklist1.returnCashBal == 1 ? true : false);

            //table 2
            $("#dateSAM").val(response.checklist2.snmDate);
            $("#inputRemarksSAM").val(response.checklist2.snmSuppDocs);
            $("#checkboxSAM").prop('checked', response.checklist2.suppliesNmaterials == 1 ? true : false);

            $("#dateFE").val(response.checklist2.feDate);
            $("#inputRemarksFE").val(response.checklist2.feSuppDocs);
            $("#checkboxFE").prop('checked', response.checklist2.foodExpenses == 1 ? true : false);

            $("#dateTF").val(response.checklist2.tfDate);
            $("#inputRemarksTF").val(response.checklist2.tfSuppDocs);
            $("#checkboxTF").prop('checked', response.checklist2.transpoFare == 1 ? true : false);

            $("#dateVAL").val(response.checklist2.vDate);
            $("#inputRemarksVAL").val(response.checklist2.vSuppDocs);
            $("#checkboxVAL").prop('checked', response.checklist2.venue == 1 ? true : false);

            $("#dateOE").val(response.checklist2.oeDate);
            $("#inputRemarksOE").val(response.checklist2.oeSuppDocs);
            $("#checkboxOE").prop('checked', response.checklist2.otherExpenses == 1 ? true : false);

            //**
            // table 3
            //**
            $("#datePOA").val(response.checklist3.paDate);
            $("#inputRemarksPOA").val(response.checklist3.paRemarks);
            $("#checkboxPOA").prop('checked', response.checklist3.programAct == 1 ? true : false);

            $("#dateIOT").val(response.checklist3.itDate);
            $("#inputRemarksIOT").val(response.checklist3.itRemarks);
            $("#checkboxIOT").prop('checked', response.checklist3.itineraryTravel == 1 ? true : false);

            $("#dateLOP").val(response.checklist3.alDate);
            $("#inputRemarksLOP").val(response.checklist3.alRemarks);
            $("#checkboxLOP").prop('checked', response.checklist3.applicantsList == 1 ? true : false);

            $("#dateROP").val(response.checklist3.nrDate);
            $("#inputRemarksROP").val(response.checklist3.nrRemarks);
            $("#checkboxROP").prop('checked', response.checklist3.narrativeReport == 1 ? true : false);

            $("#datePDA").val(response.checklist3.apDate);
            $("#inputRemarksPDA").val(response.checklist3.apRemarks);
            $("#checkboxPDA").prop('checked', response.checklist3.actPhotos == 1 ? true : false);

            $("#dateAS").val(response.checklist3.asDate);
            $("#inputRemarksAS").val(response.checklist3.asRemarks);
            $("#checkboxAS").prop('checked', response.checklist3.attendanceSheet == 1 ? true : false);

            //audit findings
            $.each(response.proofs, function (key, val) {
                if (key == 0) {
                    $(".dateAF")[key].value = val.proofDate;
                    $(".detailsAF")[key].value = val.details;
                    $(".supplierAF")[key].value = val.supplier;
                    $(".receiptsAF")[key].value = val.receipts;
                    $(".amountAF")[key].value = val.amount;
                    $(".notesAF")[key].value = val.notes;
                    $(".remarksAF")[key].value = val.remarks;
                }
                else {
                    $("#addAuditFindings").parents('tr').before('<tr> <td> ' + ++key + ' </td><td> <input type="text" class="form-control form-control-sm dateAF " value=' + '"' + val.proofDate + '"' + ' readonly disabled> </td><td> <input type="text" class="form-control form-control-sm detailsAF" value=' + '"' + val.details + '"' + ' readonly disabled> </td><td> <input type="text" class="form-control form-control-sm supplierAF" value=' + '"' + val.supplier + '"' + ' readonly disabled> </td><td> <input type="text" class="form-control form-control-sm receiptsAF" value=' + '"' + val.receipts + '"' + 'readonly disabled> </td> <td> <input type="text" class="form-control form-control-sm amountAF" value=' + '"' + val.amount + '"' + ' readonly disabled> </td><td> <input type="text" class="form-control form-control-sm notesAF" value=' + '"' + val.notes + '"' + ' readonly disabled> </td> <td> <input type="text" class="form-control form-control-sm remarksAF" value=' + '"' + val.remarks + '"' + ' readonly disabled> </td> </tr>');
                }
                countAuditFindings = ++key;
            });
        }
    });
    return countAuditFindings;
}

function clearChecklistFields() {
    $('#formChecklist :input').not(':button, :submit, :reset, :hidden, :checkbox, :radio').val('');
    $('#formChecklist :checkbox, :radio').prop('checked', false);
    $('#tableAuditFindings').children('tbody').html('<tr><td> 1 </td><td> <input type="text" class="form-control form-control-sm dateAF"> </td><td> <input type="text" class="form-control form-control-sm detailsAF"> </td><td> <input type="text" class="form-control form-control-sm supplierAF"> </td><td> <input type="text" class="form-control form-control-sm receiptsAF"> </td><td> <input type="text" class="form-control form-control-sm amountAF"> </td><td> <input type="text" class="form-control form-control-sm notesAF"> </td><td> <input type="text" class="form-control form-control-sm remarksAF"> </td></tr><tr><td style="border: none"><i class="fas fa-plus-circle" id="addAuditFindings"></i><i class="fas fa-minus-circle" id="removeAuditFindings" style="display:none;"></i></td></tr>');
    $("#addAuditFindings").parents('tr').hide();
    $(".dateAF").datepicker({
        dateFormat: 'yy-mm-dd'
    });
}

function disableChecklistFields() {
    $('#formChecklist :input').not(':button, :submit, :reset, :hidden, :radio')
            .prop('readonly', true).prop('disabled', true);
    $('#formChecklist :checkbox').prop('disabled', true);
}

function enableChecklistFields() {
    $('#formChecklist :input').not(':button, :submit, :reset, :checkbox, :radio')
            .prop('readonly', false).prop('disabled', false);
    $('#formChecklist :checkbox').prop('disabled', false);
}


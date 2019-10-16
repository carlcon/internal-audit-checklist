<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Home</title>

        <link href="${contextPath}/resources/css/summary.css" rel="stylesheet">
        <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
        <link href="${contextPath}/resources/css/jquery-ui.css" rel="stylesheet">
        <link href="${contextPath}/resources/css/jquery.dataTables.min.css" rel="stylesheet">
        <link href="${contextPath}/resources/css/all.min.css" rel="stylesheet">
        <link href="${contextPath}/resources/webfonts/fa-regular-400.ttf" rel="stylesheet">
        <link href="${contextPath}/resources/webfonts/fa-regular-400.eot" rel="stylesheet">
        <link href="${contextPath}/resources/webfonts/fa-solid-900.woff" rel="stylesheet">
        <link href="${contextPath}/resources/webfonts/fa-solid-900.ttf" rel="stylesheet">

        <script src="${contextPath}/resources/js/jquery.min.js"></script>
        <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
        <script src="${contextPath}/resources/js/jquery-ui.min.js"></script>
        <script src="${contextPath}/resources/js/jquery.dataTables.min.js"></script>
        <script src="${contextPath}/resources/js/popper.min.js"></script>

        <script>
            var currentRoleId = ${currentRoleId};
            var currentUserId = ${currentUserId};

        </script>
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
    
        <![endif]-->
        <script src="${contextPath}/resources/js/home.js"></script>
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-light bg-light" ">
            <a href="${contextPath}/home" class="navbar-brand">
                <img src="${contextPath}/resources/images/ia_logo.png" height="50" alt="Internal Audit">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="${contextPath}/home">Home<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${contextPath}/home">Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${contextPath}/logout">Logout</a>
                    </li>


                </ul>
                <!--                <form class="form-inline my-2 my-lg-0">
                                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                                </form>-->
            </div>
        </nav>

        <div class="row table_position">
            <!--            <div class="col-lg-1"></div>-->
            <div class="col-lg-12">
                <div id="tabs">
                    <ul>
                        <li id="liSummary"><a href="#tabs-1"> Summary </a></li>
                        <li id="liCheklist" style="display: none"><a href="#tabs-2"> Checklist </a></li>
                        <li id="liEmergency"><a href="#tabs-3"> Emergency </a></li>
                    </ul>

                    <!-- Summary -->
                    <div id="tabs-1">
                        <button id="btnAddChecklist" style="float:right; border-radius: 1px; background-color: #F8C471; margin-left: 3px; margin-bottom: 2px">
                            Add Checklist
                        </button>
<!--                        <button style="float:right; border-radius: 1px; background-color: #7DCEA0; margin-bottom: 3px;">Generate
                            Matrix
                        </button>-->
<!--                        <button style="float:right; border-radius: 1px; background-color: #F8C471; margin-right: 3px; margin-bottom: 2px">
                            Print Summary
                        </button>-->
                        <table id="tableSummary" class="table table-bordered" cellspacing="0" width="100%"
                               style="font-size: 0.8em;">
                            <thead>
                                <tr>
                                    <th class="th-sm" style="text-align: center; vertical-align: middle;">No.</th>
                                    <th class="th-sm" style="text-align: center; vertical-align: middle;">Control No.</th>
                                    <th class="th-sm" style="text-align: center; vertical-align: middle; width: 70px;">Docs In</th>
                                    <th class="th-sm" style="text-align: center; vertical-align: middle; width: 70px;">Docs Out</th>
                                    <th class="th-sm" style="text-align: center; vertical-align: middle; width: 75px;">No. of Days
                                    </th>
                                    <th class="th-sm" style="text-align: center; vertical-align: middle;">Accountable Officer</th>
                                    <th class="th-sm" style="text-align: center; vertical-align: middle;">Designation</th>
                                    <th class="th-sm" style="text-align: center; vertical-align: middle;">Office/Dept</th>
                                    <th class="th-sm" style="text-align: center; vertical-align: middle;">Approved Budget</th>
                                    <th class="th-sm" style="text-align: center; vertical-align: middle;">Purposed/
                                        Particulars
                                    </th>
                                    <th class="th-sm" style="text-align: center; vertical-align: middle;">Remarks</th>
                                </tr>
                            </thead>
                            <tbody>

                            </tbody>
                            <!--                            <tfoot class="thead-light">
                                                            <tr>
                                                                <th style="text-align: center; vertical-align: middle;">No.</th>
                                                                <th style="text-align: center; vertical-align: middle;">Control No.</th>
                                                                <th style="text-align: center; vertical-align: middle;">Docs In</th>
                                                                <th style="text-align: center; vertical-align: middle;">Docs Out</th>
                                                                <th style="text-align: center; vertical-align: middle;">No. of Days</th>
                                                                <th style="text-align: center; vertical-align: middle;">Accountable Officer</th>
                                                                <th style="text-align: center; vertical-align: middle;">Designation</th>
                                                                <th style="text-align: center; vertical-align: middle;">Office/Dept</th>
                                                                <th style="text-align: center; vertical-align: middle;">Approved Budget</th>
                                                                <th style="text-align: center; vertical-align: middle;"> Purposed/
                                                                    Particulars
                                                                </th>
                                                                <th style="text-align: center; vertical-align: middle;">Remarks</th>
                                                            </tr>
                                                        </tfoot>-->
                        </table>
                    </div>

                    <!-- Checklist -->
                    <form id="formChecklist">
                        <div id="tabs-2">
                            <div class="row">
                                <div class="col"></div>
                                <div class="col-auto">

                                    <button id="btnPrintChecklist" style=" border-radius: 1px; background-color: #52BE80;">Print</button>
                                    <button id="btnCancelChecklist" style=" border-radius: 1px; background-color: #EC7063; ">Cancel</button>
                                    <button id="btnClearChecklist" style=" border-radius: 1px; background-color: #7DCEA0;">Clear</button>
                                    <button id="btnEditChecklist" style=" border-radius: 1px; background-color: #F8C471; display: none">Edit</button>
                                    <button id="btnInspectChecklist" style=" border-radius: 1px; background-color: #A8C471; display: none">Inspect</button>
                                    <button id="btnNoteChecklist" style=" border-radius: 1px; background-color: #D8C471; display: none">Note</button>
                                    <button id="btnSaveChecklist" style=" border-radius: 1px; background-color: #52BE80">Save</button>
                                </div>
                            </div>


                            <div class="row">
                                <div class="form-group col-md-2">
                                    <label>Control Number:</label>
                                    <input type="text" class="form-control form-control-sm" id="inputControlNumber" >
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-4">
                                    <label>Name of Accountable Officer(AO):</label>
                                    <input type="text" class="form-control form-control-sm " id="inputFirstNameAO" placeholder="First Name">
                                </div>
                                <div class="form-group col-md-1 ">
                                    <label>&nbsp</label>
                                    <input type="text" class="form-control form-control-sm" id="inputMiddleInitialAO"
                                           placeholder="MI">
                                </div>
                                <div class="form-group col-md-3">
                                    <label>&nbsp</label>
                                    <input type="text" class="form-control form-control-sm" id="inputLastNameAO" placeholder="Last Name">
                                </div>
                                <div class="form-group col-md-2">
                                    <label>Docs In:</label>
                                    <input type="text" class="form-control form-control-sm" id="inputDocsIn" placeholder="">
                                </div>
                                <div class="form-group col-md-2">
                                    <label>Docs Out:</label>
                                    <input type="text" class="form-control form-control-sm" id="inputDocsOut" placeholder="">
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label>Office/ Department:</label>
                                    <input type="text" class="form-control form-control-sm" id="inputOffice" placeholder="">
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Designation:</label>
                                    <input type="text" class="form-control form-control-sm" id="inputDesignation" placeholder="">
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label>Purpose of Activity:</label>
                                    <input type="text" class="form-control form-control-sm" id="inputPurposeOfActivity" placeholder="">
                                </div>
                                <div class="form-group col-md-3">
                                    <label>Activity Started:</label>
                                    <input type="text" class="form-control form-control-sm" id="inputActivityStarted" placeholder="">
                                </div>
                                <div class="form-group col-md-3">
                                    <label>Activity Ended:</label>
                                    <input type="text" class="form-control form-control-sm" id="inputActivityEnded" placeholder="">
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-3">
                                    <label>Deadline:</label>
                                    <input type="text" class="form-control form-control-sm" id="inputDeadline" placeholder="">
                                </div>
                                <div class="form-group col-md-3">
                                    <label>Approved Budget:</label>
                                    <input type="text" class="form-control form-control-sm" id="inputApprovedBudget" placeholder="">
                                </div>
                                <div class="form-group col-md-3">
                                    <label>Received Amount:</label>
                                    <input type="text" class="form-control form-control-sm" id="inputReceivedAmount" placeholder="">
                                </div>
                                <div class="form-group col-md-3">
                                    <label>Total Reported Disbursement:</label>
                                    <input type="text" class="form-control form-control-sm" id="inputTotalDisbursement" placeholder="">
                                </div>
                            </div>

                            <table id="checklistTable" class="table table-bordered" cellspacing="0" width="100%"
                                   style="font-size: 1em;">
                                <thead>
                                    <tr>
                                        <th class="th-sm" style="text-align: center; vertical-align: middle; width: 40px;"></th>
                                        <th class="th-sm" style="text-align: center; vertical-align: middle;">Particulars</th>
                                        <th class="th-sm" style="text-align: center; vertical-align: middle">Date</th>
                                        <th class="th-sm" style="text-align: center; vertical-align: middle">Remarks</th>
                                        <th class="th-sm" style="text-align: center; vertical-align: middle; width: 100px;">Complied
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td> 1 </td>
                                        <td> Copy of Special Order </td>
                                        <td> <input type="date" class="form-control form-control-sm" id="dateCSO"> </td>
                                        <td> <input type="text" class="form-control form-control-sm" id="inputRemarksCSO"> </td>
                                        <td> <input type="checkbox" class="form-control form-control-sm" id="checkboxCSO"> </td>
                                    </tr>
                                    <tr>
                                        <td> 2 </td>
                                        <td> Approved Budget of Expenditures </td>
                                        <td> <input type="date" class="form-control form-control-sm" id="dateABE"> </td>
                                        <td> <input type="text" class="form-control form-control-sm" id="inputRemarksABE"> </td>
                                        <td> <input type="checkbox" class="form-control form-control-sm" id="checkboxABE"> </td>
                                    </tr>
                                    <tr>
                                        <td> 3 </td>
                                        <td> Approved Purchase Request </td>
                                        <td> <input type="date" class="form-control form-control-sm" id="dateAPR"> </td>
                                        <td> <input type="text" class="form-control form-control-sm" id="inputRemarksAPR"> </td>
                                        <td> <input type="checkbox" class="form-control form-control-sm" id="checkboxAPR"> </td>
                                    </tr>
                                    <tr>
                                        <td> 4 </td>
                                        <td> Certificate of Canvass </td>
                                        <td> <input type="date" class="form-control form-control-sm" id="dateCOC"> </td>
                                        <td> <input type="text" class="form-control form-control-sm" id="inputRemarksCOC"> </td>
                                        <td> <input type="checkbox" class="form-control form-control-sm" id="checkboxCOC"> </td>
                                    </tr>
                                    <tr>
                                        <td> 5 </td>
                                        <td> Liquidation Report/Disbursement Voucher </td>
                                        <td> <input type="date" class="form-control form-control-sm" id="dateLR"> </td>
                                        <td> <input type="text" class="form-control form-control-sm" id="inputRemarksLR"> </td>
                                        <td> <input type="checkbox" class="form-control form-control-sm" id="checkboxLR"> </td>
                                    </tr>
                                    <tr>
                                        <td> 6 </td>
                                        <td> Report of Disbursements </td>
                                        <td> <input type="date" class="form-control form-control-sm" id="dateRD"> </td>
                                        <td> <input type="text" class="form-control form-control-sm" id="inputRemarksRD"> </td>
                                        <td> <input type="checkbox" class="form-control form-control-sm" id="checkboxRD"> </td>
                                    </tr>
                                    <tr>
                                        <td> 7 </td>
                                        <td> Reimbursement Expense Receipt </td>
                                        <td> <input type="date" class="form-control form-control-sm" id="dateRER"> </td>
                                        <td> <input type="text" class="form-control form-control-sm" id="inputRemarksRER"> </td>
                                        <td> <input  type="checkbox" class="form-control form-control-sm" id="checkboxRER"> </td>
                                    </tr>
                                    <tr>
                                        <td> 8 </td>
                                        <td> Return of Cash Balance (if any) </td>
                                        <td> <input type="date" class="form-control form-control-sm" id="dateRCB"> </td>
                                        <td> <input type="text" class="form-control form-control-sm" id="inputRemarksRCB"> </td>
                                        <td> <input type="checkbox" class="form-control form-control-sm" id="checkboxRCB"> </td>
                                    </tr>
                                </tbody>
                                <!--                                <tfoot class="thead-light">
                                                                    <tr>
                                                                        <th class="th-sm" style="text-align: center; vertical-align: middle; width: 40px;"></th>
                                                                        <th class="th-sm" style="text-align: center; vertical-align: middle;">Particulars</th>
                                                                        <th class="th-sm" style="text-align: center; vertical-align: middle">Date</th>
                                                                        <th class="th-sm" style="text-align: center; vertical-align: middle">Remarks</th>
                                                                        <th class="th-sm" style="text-align: center; vertical-align: middle; width: 100px;">Complied
                                
                                                                        </th>
                                                                    </tr>
                                                                </tfoot>-->
                            </table>

                            <label>II. REPORTED DISBURSEMENTS (within the approved budget of expenditures) </label>
                            <table id="a" class="table table-bordered" cellspacing="0" width="100%" style="font-size: 1em;">
                                <thead>
                                    <tr>
                                        <th class="th-sm" style="text-align: center; vertical-align: middle; width: 40px;"></th>
                                        <th class="th-sm" style="text-align: center; vertical-align: middle;">Particulars</th>
                                        <th class="th-sm" style="text-align: center; vertical-align: middle">Date</th>
                                        <th class="th-sm" style="text-align: center; vertical-align: middle">Remarks</th>
                                        <th class="th-sm" style="text-align: center; vertical-align: middle; width: 100px;">Complied
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td> 1 </td>
                                        <td> Supplies and materials </td>
                                        <td> <input type="date" class="form-control form-control-sm" id="dateSAM"> </td>
                                        <td> <input type="text" class="form-control form-control-sm" id="inputRemarksSAM"> </td>
                                        <td> <input type="checkbox" class="form-control form-control-sm" id="checkboxSAM"> </td>
                                    </tr>
                                    <tr>
                                        <td> 2 </td>
                                        <td> Food expenses </td>
                                        <td> <input type="date" class="form-control form-control-sm" id="dateFE"> </td>
                                        <td> <input type="text" class="form-control form-control-sm" id="inputRemarksFE"> </td>
                                        <td> <input type="checkbox" class="form-control form-control-sm" id="checkboxFE"> </td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Transporation fare</td>
                                        <td> <input type="date" class="form-control form-control-sm" id="dateTF"> </td>
                                        <td> <input type="text" class="form-control form-control-sm" id="inputRemarksTF"> </td>
                                        <td> <input type="checkbox" class="form-control form-control-sm" id="checkboxTF"> </td>
                                    </tr>
                                    <tr>
                                        <td> 4 </td>
                                        <td> Venue/Accomodation/Lodging(w/canvass of at least 3 legitimate Supplier) </td>
                                        <td> <input type="date" class="form-control form-control-sm" id="dateVAL"> </td>
                                        <td> <input type="text" class="form-control form-control-sm" id="inputRemarksVAL"> </td>
                                        <td> <input type="checkbox" class="form-control form-control-sm" id="checkboxVAL"> </td>
                                    </tr>
                                    <tr>
                                        <td> 5 </td>
                                        <td> Other expenses </td>
                                        <td> <input type="date" class="form-control form-control-sm" id="dateOE"> </td>
                                        <td> <input type="text" class="form-control form-control-sm" id="inputRemarksOE"> </td>
                                        <td> <input type="checkbox" class="form-control form-control-sm" id="checkboxOE"> </td>
                                    </tr>
                                </tbody>
                                <!--                                <tfoot class="thead-light">
                                                                    <tr>
                                                                        <th class="th-sm" style="text-align: center; vertical-align: middle; width: 40px;"></th>
                                                                        <th class="th-sm" style="text-align: center; vertical-align: middle;">Particulars</th>
                                                                        <th class="th-sm" style="text-align: center; vertical-align: middle">Date</th>
                                                                        <th class="th-sm" style="text-align: center; vertical-align: middle">Remarks</th>
                                                                        <th class="th-sm" style="text-align: center; vertical-align: middle; width: 100px;">Complied
                                                                        </th>
                                                                    </tr>
                                                                </tfoot>-->
                            </table>

                            <label>III. ADDITIONAL REQUIREMENTS FOR OFFICIAL TRAVEL/ SEMINARS/RESEARCH </label>
                            <table id="a" class="table table-bordered" cellspacing="0" width="100%" style="font-size: 1em;">
                                <thead>
                                    <tr>
                                        <th class="th-sm" style="text-align: center; vertical-align: middle; width: 40px;"></th>
                                        <th class="th-sm" style="text-align: center; vertical-align: middle;">Particulars</th>
                                        <th class="th-sm" style="text-align: center; vertical-align: middle">Date</th>
                                        <th class="th-sm" style="text-align: center; vertical-align: middle">Remarks</th>
                                        <th class="th-sm" style="text-align: center; vertical-align: middle; width: 100px;">Complied
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td> 1 </td>
                                        <td> Program of Activities </td>
                                        <td> <input type="date" class="form-control form-control-sm form-control form-control-sm-sm" id="datePOA"> </td>
                                        <td> <input type="text" class="form-control form-control-sm form-control form-control-sm-sm" id="inputRemarksPOA"> </td>
                                        <td> <input type="checkbox" class="form-control form-control-sm form-control form-control-sm-sm" id="checkboxPOA"> </td>
                                    </tr>
                                    <tr>
                                        <td> 2 </td>
                                        <td> Itenerary of Travel </td>
                                        <td> <input type="date" class="form-control form-control-sm" id="dateIOT"> </td>
                                        <td> <input type="text" class="form-control form-control-sm" id="inputRemarksIOT"> </td>
                                        <td> <input type="checkbox" class="form-control form-control-sm" id="checkboxIOT"> </td>
                                    </tr>
                                    <tr>
                                        <td> 3 </td>
                                        <td> List of Participants </td>
                                        <td> <input type="date" class="form-control form-control-sm" id="dateLOP"> </td>
                                        <td> <input type="text" class="form-control form-control-sm" id="inputRemarksLOP"> </td>
                                        <td> <input type="checkbox" class="form-control form-control-sm" id="checkboxLOP"> </td>
                                    </tr>
                                    <tr>
                                        <td> 4 </td>
                                        <td> Report of Proceedings/Narrative Report </td>
                                        <td> <input type="date" class="form-control form-control-sm" id="dateROP"> </td>
                                        <td> <input type="text" class="form-control form-control-sm" id="inputRemarksROP"> </td>
                                        <td> <input type="checkbox" class="form-control form-control-sm" id="checkboxROP"> </td>
                                    </tr>
                                    <tr>
                                        <td> 5 </td>
                                        <td> Photos during the activity </td>
                                        <td> <input type="date" class="form-control form-control-sm" id="datePDA"> </td>
                                        <td> <input type="text" class="form-control form-control-sm" id="inputRemarksPDA"> </td>
                                        <td> <input type="checkbox" class="form-control form-control-sm" id="checkboxPDA"> </td>
                                    </tr>
                                    <tr>
                                        <td> 6 </td>
                                        <td> Attendance sheet </td>
                                        <td> <input type="date" class="form-control form-control-sm" id="dateAS"> </td>
                                        <td> <input type="text" class="form-control form-control-sm" id="inputRemarksAS"> </td>
                                        <td> <input type="checkbox" class="form-control form-control-sm" id="checkboxAS"> </td>
                                    </tr>
                                </tbody>
                                <!--                                <tfoot class="thead-light">
                                                                    <tr>
                                                                        <th class="th-sm" style="text-align: center; vertical-align: middle; width: 40px;"></th>
                                                                        <th class="th-sm" style="text-align: center; vertical-align: middle;">Particulars</th>
                                                                        <th class="th-sm" style="text-align: center; vertical-align: middle">Date</th>
                                                                        <th class="th-sm" style="text-align: center; vertical-align: middle">Remarks</th>
                                                                        <th class="th-sm" style="text-align: center; vertical-align: middle; width: 100px;">Complied
                                                                        </th>
                                                                    </tr>
                                                                </tfoot>-->
                            </table>



                            <label>IV. AUDIT FINDINGS </label>
                            <table id="tableAuditFindings" class="table table-bordered" cellspacing="0" width="100%" style="font-size: 1em;">
                                <thead>
                                    <tr>
                                        <th class="th-sm" style="text-align: center; vertical-align: middle; width: 2%"></th>
                                        <th class="th-sm" style="text-align: center; vertical-align: middle; width: 10%">Date</th>
                                        <th class="th-sm" style="text-align: center; vertical-align: middle;">Details</th>
                                        <th class="th-sm" style="text-align: center; vertical-align: middle;">Supplier</th>
                                        <th class="th-sm" style="text-align: center; vertical-align: middle">Receipts</th>
                                        <th class="th-sm" style="text-align: center; vertical-align: middle; width: 10%;">Amount</th>
                                        <th class="th-sm" style="text-align: center; vertical-align: middle;">Observation/notes</th>
                                        <th class="th-sm" style="text-align: center; vertical-align: middle; width: 10%;">Remarks</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td> 1 </td>
                                        <td> <input type="text" class="form-control form-control-sm dateAF"> </td>
                                        <td> <input type="text" class="form-control form-control-sm detailsAF"> </td>
                                        <td> <input type="text" class="form-control form-control-sm supplierAF"> </td>
                                        <td> <input type="text" class="form-control form-control-sm receiptsAF"> </td>
                                        <td> <input type="text" class="form-control form-control-sm amountAF"> </td>
                                        <td> <input type="text" class="form-control form-control-sm notesAF"> </td>
                                        <td> <input type="text" class="form-control form-control-sm remarksAF"> </td>
                                    </tr>
                                    <tr>
                                        <td style="border: none">
                                            <i class="fas fa-plus-circle" id="addAuditFindings"></i>
                                            <i class="fas fa-minus-circle" id="removeAuditFindings" style="display:none;"></i>
                                        </td>
                                    </tr>


                                </tbody>

                            </table>
                            <div class="row">
                                <div class="form-group col-md-4">
                                    <label>Prepared by:</label>
                                    <input type="text" class="form-control form-control-sm" id="Preparedby" placeholder="">
                                    <input type="text" class="form-control form-control-sm" id="PreparedbyPosition" placeholder="">
                                </div>
                                <div class="form-group col-md-4">
                                    <label>Inspected by:</label>
                                    <input type="text" class="form-control form-control-sm" id="Inspectedby" placeholder="">
                                    <input type="text" class="form-control form-control-sm" id="InspectedbyPosition" placeholder="">
                                </div>
                                <div class="form-group col-md-4">
                                    <label>Verified by:</label>
                                    <input type="text" class="form-control form-control-sm" id="Verifiedby" placeholder="">
                                    <input type="text" class="form-control form-control-sm" id="VerfiedbyPosition" placeholder="">
                                </div>
                            </div>
                        </div>
                    </form>  


                    <!-- Emergency -->
                    <div id="tabs-3">
                        <div class="col-md-12" style="margin-top: 20px; margin-bottom: 10px">
                            <button style="float:right; border-radius: 1px; background-color: #52BE80">Print</button>
                            <button style="float:right; border-radius: 1px; background-color: #EC7063; margin-left: 2px">
                                Cancel
                            </button>
                            <button style="float:right; border-radius: 1px; background-color: #7DCEA0">Clear</button>
                            <button style="float:right; border-radius: 1px; background-color: #F8C471">Edit</button>
                            <button style="float:right; border-radius: 1px; background-color: #52BE80">Save</button>
                        </div>
                        <table id="dtExample" class="table table-bordered" cellspacing="0" width="100%" style="font-size: 1em;">
                            <thead>
                                <tr>
                                    <th class="th-sm" style="text-align: center; vertical-align: middle; ; width: 80px;">O.R Date
                                    </th>
                                    <th class="th-sm" style="text-align: center; vertical-align: middle;">Item/Description</th>
                                    <th class="th-sm" style="text-align: center; vertical-align: middle">Office</th>
                                    <th class="th-sm" style="text-align: center; vertical-align: middle">Name</th>
                                    <th class="th-sm" style="text-align: center; vertical-align: middle">Amount</th>
                                    <th class="th-sm" style="text-align: center; vertical-align: middle; width: 100px;">Remarks</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><input type="text" class="form-control form-control-sm" id="ORDate"></td>
                                    <td><input type="text" class="form-control form-control-sm" id="Item"></td>
                                    <td><input type="text" class="form-control form-control-sm" id="Office"></td>
                                    <td><input type="text" class="form-control form-control-sm" id="E-Name"></td>
                                    <td><input type="text" class="form-control form-control-sm" id="E-Amount"></td>
                                    <td><input type="text" class="form-control form-control-sm" id="E-Remarks"></td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <div id="dialogNewChecklist" title="Select Request Type">
            <form>
                <fieldset>
                    <select class="form-control form-control-sm" id="selectRequestType">
                        <option value="0">--Please Select Request Type--</option>
                        <option value="1">Reimbursement</option>
                        <option value="2">Liquidation</option>
                        <option value="3">Replenishment</option>
                    </select>

                    <!-- Allow form submission with keyboard without duplicating the dialog button -->
                    <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
                </fieldset>
            </form>
        </div>

        <div id="dialogDeleteChecklist" title="Delete Checklist" style="display:none">
            <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>This checklist will be deleted. Do you want to continue?</p>
        </div>

        <div id="dialogInspectChecklist" title="Inspect Checklist" style="display:none">
            <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>This checklist will have a status of inspected. Do you want to continue?</p>
        </div>

        <div id="dialogNoteChecklist" title="Note Checklist" style="display:none">
            <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>This checklist will have a status of noted. Do you want to continue?</p>
        </div>
    </body>
</html>
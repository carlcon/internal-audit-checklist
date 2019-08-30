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

    <title>Log in with your account</title>

    <link href="${contextPath}/resources/css/summary.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/jquery-ui.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/jquery.dataTables.min.css" rel="stylesheet">

    <script src="${contextPath}/resources/js/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${contextPath}/resources/js/jquery-ui.min.js"></script>
    <script src="${contextPath}/resources/js/jquery.dataTables.min.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>

    <![endif]-->
    <script>


        $(document).ready(function () {
            $("#tabs").tabs();

            $("#btnAddChecklist").click(function() {
                $("#liCheklist").show();
                $("#liAuditFindings").show();
                $("#liMatrix").show();

                $( "#tabs" ).tabs( "option", "active", 1 );
            });

            $("#btnLogin").click(function () {




//                var login = {
//                    username: $("#inputUsername").val(),
//                    password: $("#inputPassword").val()
//                };
//
//
//
//                    $.ajax({
//                        url: "loginProcess",
//                        type: "POST",
//                        contentType: "application/json",
//                        data: JSON.stringify(login), //Stringified Json Object
//                       // dataType: 'json',
//                        success: function (response) {
//                            alert(response);
//                            alert(response.username);
//
//                        }
//                    });


            });

        });


    </script>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-main">
                <span class="sr-only"> Toggle Navigation </span>
                <span class="icon-bar"> </span>
                <span class="icon-bar"> </span>
                <span class="icon-bar"> </span>
            </button>
            <a class="navbar-brand" href="#"> <img src=""> </a>
        </div>
        <div class="collapse navbar-collapse" id="navbar-collapse-main">
            <ul class="nav navbar-nav navbar-right">
                <li><a class="active nav_bar" href="#"> Home </a></li>
                <li><a class="nav_bar" href="#"> Profile </a></li>
                <li><a class="nav_bar" href="#"> Log out </a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="row table_position">
    <div class="col-lg-1"></div>
    <div class="col-lg-10">
        <div id="tabs">
            <ul>
                <li id="liSummary"><a href="#tabs-1"> Summary </a></li>
                <li id="liCheklist" style="display: none"><a href="#tabs-2"> Checklist </a></li>
                <li id="liAuditFindings"><a href="#tabs-3"> Audit findings </a></li>
                <li id="liMatrix" style="display: none"><a href="#tabs-4"> Matrix </a></li>
                <li id="liEmergency"><a href="#tabs-5"> Emergency </a></li>
            </ul>

            <!-- Summary -->
            <div id="tabs-1">
                <button id="btnAddChecklist" style="float:right; border-radius: 1px; background-color: #F8C471; margin-left: 3px; margin-bottom: 2px">
                    Add Checklist
                </button>
                <button style="float:right; border-radius: 1px; background-color: #7DCEA0; margin-bottom: 3px;">Generate
                    Matrix
                </button>
                <button style="float:right; border-radius: 1px; background-color: #F8C471; margin-right: 3px; margin-bottom: 2px">
                    Print Summary
                </button>
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
                    <tr>
                        <td>1</td>
                        <td>153</td>
                        <td>07-10-19</td>
                        <td>07-13-19</td>
                        <td></td>
                        <td>Sherwin N. Nieva</td>
                        <td>Director</td>
                        <td>Physical Planning and Development Office</td>
                        <td>30,000.00</td>
                        <td>Reimbursement of expenses incurred in connection with the Printing of Plans and Drawing of
                            plans and Drawings of the proposed projects for FY 2020.
                        </td>
                        <td>Cleared</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>154</td>
                        <td>07-10-19</td>
                        <td>07-13-19</td>
                        <td></td>
                        <td>Sherwin N. Nieva</td>
                        <td>Director</td>
                        <td>Physical Planning and Development Office</td>
                        <td>30,000.00</td>
                        <td>Reimbursement of expenses incurred in connection with the Printing of Plans and Drawing of
                            plans and Drawings of the proposed projects for FY 2020.
                        </td>
                        <td>Cleared</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>155</td>
                        <td>07-10-19</td>
                        <td>07-13-19</td>
                        <td></td>
                        <td>Sherwin N. Nieva</td>
                        <td>Director</td>
                        <td>Physical Planning and Development Office</td>
                        <td>30,000.00</td>
                        <td>Reimbursement of expenses incurred in connection with the Printing of Plans and Drawing of
                            plans and Drawings of the proposed projects for FY 2020.
                        </td>
                        <td>Cleared</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>156</td>
                        <td>07-10-19</td>
                        <td>07-13-19</td>
                        <td></td>
                        <td>Sherwin N. Nieva</td>
                        <td>Director</td>
                        <td>Physical Planning and Development Office</td>
                        <td>30,000.00</td>
                        <td>Reimbursement of expenses incurred in connection with the Printing of Plans and Drawing of
                            plans and Drawings of the proposed projects for FY 2020.
                        </td>
                        <td>Cleared</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>157</td>
                        <td>07-10-19</td>
                        <td>07-13-19</td>
                        <td></td>
                        <td>Sherwin N. Nieva</td>
                        <td>Director</td>
                        <td>Physical Planning and Development Office</td>
                        <td>30,000.00</td>
                        <td>Reimbursement of expenses incurred in connection with the Printing of Plans and Drawing of
                            plans and Drawings of the proposed projects for FY 2020.
                        </td>
                        <td>Cleared</td>
                    </tr>
                    </tbody>
                    <tfoot class="thead-light">
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
                    </tfoot>
                </table>
            </div>

            <!-- Checklist -->
            <div id="tabs-2">
                <div class="row">
                    <div class="cold-md-12">
                        <button id="btnChecklistPrint" style="float:right; border-radius: 1px; background-color: #52BE80; display: none">Print</button>
                        <button id="btnChecklistCancel" style="float:right; border-radius: 1px; background-color: #EC7063; ">Cancel</button>
                        <button id="btnChecklistClear" style="float:right; border-radius: 1px; background-color: #7DCEA0">Clear</button>
                        <button id="btnChecklistEdit" style="float:right; border-radius: 1px; background-color: #F8C471; display: none">Edit</button>
                        <button id="btnChecklistSave" style="float:right; border-radius: 1px; background-color: #52BE80">Save</button>
                    </div>
                </div>

                    <form>
                        <div class="row">
                            <div class="form-group col-md-2">
                                <label>Control Number:</label>
                                <input type="text" class="form-control" id="inputControlNumber">
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-5">
                                <label>Name of Accountable Officer(AO):</label>
                                <input type="text" class="form-control" id="inputFirstNameAO" placeholder="First Name">
                            </div>
                            <div class="form-group col-md-2 ">
                                <label>&nbsp</label>
                                <input type="text" class="form-control" id="inputMiddleInitialAO"
                                       placeholder="Middle initial">
                            </div>
                            <div class="form-group col-md-5">
                                <label>&nbsp</label>
                                <input type="text" class="form-control" id="inputLastNameAO" placeholder="Last Name">
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Office/ Department:</label>
                                <input type="text" class="form-control" id="inputOffice" placeholder="">
                            </div>
                            <div class="form-group col-md-6">
                                <label>Designation:</label>
                                <input type="text" class="form-control" id="inputDesignation" placeholder="">
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Purpose of Activity:</label>
                                <input type="text" class="form-control" id="Activity" placeholder="">
                            </div>
                            <div class="form-group col-md-3">
                                <label>Period of Activity:</label>
                                <input type="text" class="form-control" id="PeriodOfActivity" placeholder="">
                            </div>
                            <div class="form-group col-md-3">
                                <label>Deadline:</label>
                                <input type="text" class="form-control" id="Deadline" placeholder="">
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-4">
                                <label>Approved Budget:</label>
                                <input type="text" class="form-control" id="inputApprovedBudget" placeholder="">
                            </div>
                            <div class="form-group col-md-4">
                                <label>Received Amount:</label>
                                <input type="text" class="form-control" id="inputReceivedAmount" placeholder="">
                            </div>
                            <div class="form-group col-md-4">
                                <label>Total Reported Disbursement:</label>
                                <input type="text" class="form-control" id="inputTotalDisbursement" placeholder="">
                            </div>
                        </div>
                    </form>
                    <table id="checklistTable" class="table table-bordered" cellspacing="0" width="100%"
                           style="font-size: 1em;">
                        <thead>
                        <tr>
                            <th class="th-sm" style="text-align: center; vertical-align: middle; ; width: 40px;"></th>
                            <th class="th-sm" style="text-align: center; vertical-align: middle;">Particulars</th>
                            <th class="th-sm" style="text-align: center; vertical-align: middle">Date</th>
                            <th class="th-sm" style="text-align: center; vertical-align: middle">Remarks</th>
                            <th class="th-sm" style="text-align: center; vertical-align: middle; width: 100px;">Complied
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>Copy of Special Order</td>
                            <td></td>
                            <td>Issued by the OP</td>
                            <td> <input name="check1" type="checkbox" onclick="onlyOne1(this)"> </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Approved Budget of Expenditures</td>
                            <td></td>
                            <td>Issued by the Budget Ofc.</td>
                            <td> <input name="check1" type="checkbox" onclick="onlyOne1(this)"> </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Approved Purchase Request</td>
                            <td></td>
                            <td>Duly accomplished</td>
                            <td> <input name="check1" type="checkbox" onclick="onlyOne1(this)"> </td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Certificate of Canvass</td>
                            <td></td>
                            <td>Certified by the AO</td>
                            <td> <input name="check1" type="checkbox" onclick="onlyOne1(this)"> </td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>Liquidation Report/Disbursement Voucher</td>
                            <td></td>
                            <td>Certified by the AO</td>
                            <td> <input name="check1" type="checkbox" onclick="onlyOne1(this)"> </td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>Report of Disbursements</td>
                            <td></td>
                            <td>Certified by the AO</td>
                            <td> <input name="check1" type="checkbox" onclick="onlyOne1(this)"> </td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>Reimbursement Expense Receipt</td>
                            <td></td>
                            <td>Duly accomplished</td>
                            <td> <input name="check1" type="checkbox" onclick="onlyOne1(this)"> </td>
                        </tr>
                        <tr>
                            <td>8</td>
                            <td>Return of Cash Balance (if any)</td>
                            <td></td>
                            <td>Supported by OR issued by the Cashiers Office</td>
                            <td> <input name="check1" type="checkbox" onclick="onlyOne1(this)"> </td>
                        </tr>
                        </tbody>
                        <tfoot class="thead-light">
                        <tr>
                            <th class="th-sm" style="text-align: center; vertical-align: middle; ; width: 40px;"></th>
                            <th class="th-sm" style="text-align: center; vertical-align: middle;">Particulars</th>
                            <th class="th-sm" style="text-align: center; vertical-align: middle">Date</th>
                            <th class="th-sm" style="text-align: center; vertical-align: middle">Remarks</th>
                            <th class="th-sm" style="text-align: center; vertical-align: middle; width: 100px;">Complied

                            </th>
                        </tr>
                        </tfoot>
                    </table>

                    <label>II. REPORTED DISBURSEMENTS (within the approved budget of expenditures) </label>
                    <table id="a" class="table table-bordered" cellspacing="0" width="100%" style="font-size: 1em;">
                        <thead>
                        <tr>
                            <th class="th-sm" style="text-align: center; vertical-align: middle; ; width: 40px;"></th>
                            <th class="th-sm" style="text-align: center; vertical-align: middle;">Particulars</th>
                            <th class="th-sm" style="text-align: center; vertical-align: middle">Date</th>
                            <th class="th-sm" style="text-align: center; vertical-align: middle">Remarks</th>
                            <th class="th-sm" style="text-align: center; vertical-align: middle; width: 100px;">Complied
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>Supplies and materials</td>
                            <td></td>
                            <td></td>
                            <td>  <input name="check9" type="checkbox" onclick="onlyOne9(this)"> </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Food expenses</td>
                            <td></td>
                            <td></td>
                            <td>  <input name="check9" type="checkbox" onclick="onlyOne9(this)"> </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Transporation fare</td>
                            <td></td>
                            <td></td>
                            <td>  <input name="check9" type="checkbox" onclick="onlyOne9(this)"> </td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Venue/Accomodation/Lodging(w/canvass of at least 3 legitimate Supplier)</td>
                            <td></td>
                            <td></td>
                            <td>  <input name="check9" type="checkbox" onclick="onlyOne9(this)"> </td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>Other expenses</td>
                            <td></td>
                            <td></td>
                            <td>  <input name="check9" type="checkbox" onclick="onlyOne9(this)"> </td>
                        </tr>
                        </tbody>
                        <tfoot class="thead-light">
                        <tr>
                            <th class="th-sm" style="text-align: center; vertical-align: middle; ; width: 40px;"></th>
                            <th class="th-sm" style="text-align: center; vertical-align: middle;">Particulars</th>
                            <th class="th-sm" style="text-align: center; vertical-align: middle">Date</th>
                            <th class="th-sm" style="text-align: center; vertical-align: middle">Remarks</th>
                            <th class="th-sm" style="text-align: center; vertical-align: middle; width: 100px;">Complied
                            </th>
                        </tr>
                        </tfoot>
                    </table>

                    <label>III. ADDITIONAL REQUIREMENTS FOR OFFICIAL TRAVEL/ SEMINARS/RESEARCH </label>
                    <table id="" class="table table-bordered" cellspacing="0" width="100%" style="font-size: 1em;">
                        <thead>
                        <tr>
                            <th class="th-sm" style="text-align: center; vertical-align: middle; ; width: 40px;"></th>
                            <th class="th-sm" style="text-align: center; vertical-align: middle;">Particulars</th>
                            <th class="th-sm" style="text-align: center; vertical-align: middle">Date</th>
                            <th class="th-sm" style="text-align: center; vertical-align: middle">Remarks</th>
                            <th class="th-sm" style="text-align: center; vertical-align: middle; width: 100px;">Complied
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>Program of Activities</td>
                            <td></td>
                            <td>Certified by the AO</td>
                            <td> <input name="check14" type="checkbox" onclick="onlyOne14(this)"> </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Itenerary of Travel</td>
                            <td></td>
                            <td>Duly Accomplished</td>
                            <td> <input name="check14" type="checkbox" onclick="onlyOne14(this)"> </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>List of Participants</td>
                            <td></td>
                            <td>Certified by the AO</td>
                            <td> <input name="check14" type="checkbox" onclick="onlyOne14(this)"> </td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Report of Proceedings/Narrative Report</td>
                            <td></td>
                            <td>Certified by the AO</td>
                            <td> <input name="check14" type="checkbox" onclick="onlyOne14(this)"> </td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>Photos during the activity</td>
                            <td></td>
                            <td>Certified by the AO</td>
                            <td> <input name="check14" type="checkbox" onclick="onlyOne14(this)"> </td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>Attendance sheet</td>
                            <td></td>
                            <td>Signed by the Participants</td>
                            <td> <input name="check14" type="checkbox" onclick="onlyOne14(this)"> </td>
                        </tr>
                        </tbody>
                        <tfoot class="thead-light">
                        <tr>
                            <th class="th-sm" style="text-align: center; vertical-align: middle; width: 40px;"></th>
                            <th class="th-sm" style="text-align: center; vertical-align: middle;">Particulars</th>
                            <th class="th-sm" style="text-align: center; vertical-align: middle">Date</th>
                            <th class="th-sm" style="text-align: center; vertical-align: middle">Remarks</th>
                            <th class="th-sm" style="text-align: center; vertical-align: middle; width: 100px;">Complied
                            </th>
                        </tr>
                        </tfoot>
                    </table>

            </div>

            <!-- Audit Findings -->
            <div id="tabs-3">
                <div class="col-md-12">
                    <button style="float:right; border-radius: 1px; background-color: #52BE80">Print</button>
                    <button style="float:right; border-radius: 1px; background-color: #EC7063; margin-left: 2px">
                        Cancel
                    </button>
                    <button style="float:right; border-radius: 1px; background-color: #7DCEA0">Clear</button>
                    <button style="float:right; border-radius: 1px; background-color: #F8C471">Edit</button>
                    <button style="float:right; border-radius: 1px; background-color: #52BE80">Save</button>
                </div>
                <form>
                    <div class="row">
                        <div class="form-group col-md-2">
                            <label>Control Number:</label>
                            <input type="text" class="form-control" id="ControlNumber">
                        </div>
                        <div class="form-group col-md-2">
                            <label>Date:</label>
                            <input type="text" class="form-control" id="Date">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Office/Department/Branch/Campuses:</label>
                            <input type="text" class="form-control" id="inputLocation" placeholder="">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Purposed/Subject:</label>
                            <input type="text" class="form-control" id="inputSubject" placeholder="">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-5">
                            <label>Name of Accountable Officer(AO):</label>
                            <input type="text" class="form-control" id="FirstName-AO" placeholder="First Name">
                        </div>
                        <div class="form-group col-md-2 ">
                            <label>&nbsp</label>
                            <input type="text" class="form-control" id="MiddleInitial-AO" placeholder="Middle Initial">
                        </div>
                        <div class="form-group col-md-5">
                            <label>&nbsp</label>
                            <input type="text" class="form-control" id="LastName-AO" placeholder="Last Name">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Approved Budget:</label>
                            <input type="text" class="form-control" id="Location" placeholder="">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Purposed/Subject:</label>
                            <input type="text" class="form-control" id="Subject" placeholder="">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-4">
                            <label>Approved Budget:</label>
                            <input type="text" class="form-control" id="ApprovedBudget" placeholder="">
                        </div>
                        <div class="form-group col-md-4">
                            <label>Received Amount:</label>
                            <input type="text" class="form-control" id="ReceivedAmount" placeholder="">
                        </div>
                        <div class="form-group col-md-4">
                            <label>Total Reported Disbursement:</label>
                            <input type="text" class="form-control" id="TotalDisbursement" placeholder="">
                        </div>
                    </div>
                </form>

                <table id="dtBasic" class="table table-bordered" cellspacing="0" width="100%" style="font-size: 1em;">
                    <thead>
                    <tr>
                        <th class="th-sm" style="text-align: center; vertical-align: middle; width: 40px;">No.</th>
                        <th class="th-sm" style="text-align: center; vertical-align: middle; width: 60px;">Date</th>
                        <th class="th-sm" style="text-align: center; vertical-align: middle; width: 150px;">Supplier
                        </th>
                        <th class="th-sm" style="text-align: center; vertical-align: middle">Receipts</th>
                        <th class="th-sm" style="text-align: center; vertical-align: middle; width: 60px;">Amount</th>
                        <th class="th-sm" style="text-align: center; vertical-align: middle">Observation/notes</th>
                        <th class="th-sm" style="text-align: center; vertical-align: middle; width: 100px;">Remarks</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    </tbody>
                </table>
                <div class="row">
                    <div class="form-group col-md-4">
                        <label>Prepared by:</label>
                        <input type="text" class="form-control" id="Preparedby" placeholder="">
                        <input type="text" class="form-control" id="PreparedbyPosition" placeholder="">
                    </div>
                    <div class="form-group col-md-4">
                        <label>Inspected by:</label>
                        <input type="text" class="form-control" id="Inspectedby" placeholder="">
                        <input type="text" class="form-control" id="InspectedbyPosition" placeholder="">
                    </div>
                    <div class="form-group col-md-4">
                        <label>Verified by:</label>
                        <input type="text" class="form-control" id="Verifiedby" placeholder="">
                        <input type="text" class="form-control" id="VerfiedbyPosition" placeholder="">
                    </div>
                </div>
            </div>

            <!--Matrix -->
            <div id="tabs-4">
                <div class="row">
                    <div class="col-md-12">
                        <button style="float:right; border-radius: 1px; background-color: #EC7063; margin-left: 2px">
                            Cancel
                        </button>
                        <button style="float:right; border-radius: 1px; background-color: #52BE80">Print</button>
                    </div>
                </div>
                <table id="dtBasicExample" class="table table-bordered" cellspacing="0" width="100%"
                       style="font-size: 1em;">
                    <thead>
                    <tr>
                        <th class="th-sm" style="text-align: center; vertical-align: middle; ; width: 80px;">Control
                            No.
                        </th>
                        <th class="th-sm" style="text-align: center; vertical-align: middle;">Date In</th>
                        <th class="th-sm" style="text-align: center; vertical-align: middle">Date Out</th>
                        <th class="th-sm" style="text-align: center; vertical-align: middle">Accountable Officer</th>
                        <th class="th-sm" style="text-align: center; vertical-align: middle; width: 100px;">Remarks</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <!-- Emergency -->
            <div id="tabs-5">
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
                        <td><input type="text" class="form-control" id="ORDate"></td>
                        <td><input type="text" class="form-control" id="Item"></td>
                        <td><input type="text" class="form-control" id="Office"></td>
                        <td><input type="text" class="form-control" id="E-Name"></td>
                        <td><input type="text" class="form-control" id="E-Amount"></td>
                        <td><input type="text" class="form-control" id="E-Remarks"></td>
                    </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>
<html lang="en">
<head>
    <%@include file="/views/common_links.jsp"%>
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <!-- side  navigation -->
        <%@include file="/views/sidenav.jsp"%>
        <!-- side navigation -->

        <!-- top navigation -->
        <%@include file="/views/topnav.jsp"%>
        <!-- /top navigation -->


        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">

                <h3>Employees </h3>

                <div class="row">
                    <div class="col-md-12 col-sm-12 ">
                        <div class="x_panel">
                            <div class="col-md-3 col-sm-3 ">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-secondary " data-toggle="dropdown"
                                            aria-haspopup="true" aria-expanded="false">
                                        Filter
                                        <i class="fa fa-filter"></i> </button>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="#">Action</a>
                                        <a class="dropdown-item" href="#">Another action</a>
                                        <a class="dropdown-item" href="#">Something else here</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#">Separated link</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-9 col-sm-9 " >
                                <button type="button" class="btn btn-round btn-primary " style="float: right">
                                    Add Employee
                                    <i class="fa fa-plus"></i> </button>
                            </div>

                            <div class="x_content">

                                <div class="table-responsive">
                                    <table class="table table-striped jambo_table bulk_action">
                                        <thead>
                                        <tr class="headings">
                                            <th>
                                                <input type="checkbox" id="check-all" class="flat">
                                            </th>
                                            <th class="column-title">Employee Name</th>
                                            <th class="column-title">Employee Code</th>
                                            <th class="column-title">Date of Birth</th>
                                            <th class="column-title no-link last"><span class="nobr">Action</span>
                                            </th>
                                            <th class="bulk-actions" colspan="7">
                                                <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
                                            </th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                        <tr class="even pointer">
                                            <td class="a-center ">
                                                <input type="checkbox" class="flat" name="table_records">
                                            </td>
                                            <td class=" ">121000040</td>
                                            <td class=" ">May 23, 2014 11:47:56 PM </td>
                                            <td class=" ">121000210 <i class="success fa fa-long-arrow-up"></i></td>
                                            <td class=" ">John Blank L</td>
                                            <td class=" ">Paid</td>
                                            <td class="a-right a-right ">$7.45</td>
                                            <td class=" last"><a href="#">View</a>
                                            </td>
                                        </tr>
                                        <tr class="odd pointer">
                                            <td class="a-center ">
                                                <input type="checkbox" class="flat" name="table_records">
                                            </td>
                                            <td class=" ">121000039</td>
                                            <td class=" ">May 23, 2014 11:30:12 PM</td>
                                            <td class=" ">121000208 <i class="success fa fa-long-arrow-up"></i>
                                            </td>
                                            <td class=" ">John Blank L</td>
                                            <td class=" ">Paid</td>
                                            <td class="a-right a-right ">$741.20</td>
                                            <td class=" last"><a href="#">View</a>
                                            </td>
                                        </tr>
                                        <tr class="even pointer">
                                            <td class="a-center ">
                                                <input type="checkbox" class="flat" name="table_records">
                                            </td>
                                            <td class=" ">121000038</td>
                                            <td class=" ">May 24, 2014 10:55:33 PM</td>
                                            <td class=" ">121000203 <i class="success fa fa-long-arrow-up"></i>
                                            </td>
                                            <td class=" ">Mike Smith</td>
                                            <td class=" ">Paid</td>
                                            <td class="a-right a-right ">$432.26</td>
                                            <td class=" last"><a href="#">View</a>
                                            </td>
                                        </tr>
                                        <tr class="odd pointer">
                                            <td class="a-center ">
                                                <input type="checkbox" class="flat" name="table_records">
                                            </td>
                                            <td class=" ">121000037</td>
                                            <td class=" ">May 24, 2014 10:52:44 PM</td>
                                            <td class=" ">121000204</td>
                                            <td class=" ">Mike Smith</td>
                                            <td class=" ">Paid</td>
                                            <td class="a-right a-right ">$333.21</td>
                                            <td class=" last"><a href="#">View</a>
                                            </td>
                                        </tr>
                                        <tr class="even pointer">
                                            <td class="a-center ">
                                                <input type="checkbox" class="flat" name="table_records">
                                            </td>
                                            <td class=" ">121000040</td>
                                            <td class=" ">May 24, 2014 11:47:56 PM </td>
                                            <td class=" ">121000210</td>
                                            <td class=" ">John Blank L</td>
                                            <td class=" ">Paid</td>
                                            <td class="a-right a-right ">$7.45</td>
                                            <td class=" last"><a href="#">View</a>
                                            </td>
                                        </tr>
                                        <tr class="odd pointer">
                                            <td class="a-center ">
                                                <input type="checkbox" class="flat" name="table_records">
                                            </td>
                                            <td class=" ">121000039</td>
                                            <td class=" ">May 26, 2014 11:30:12 PM</td>
                                            <td class=" ">121000208 <i class="error fa fa-long-arrow-down"></i>
                                            </td>
                                            <td class=" ">John Blank L</td>
                                            <td class=" ">Paid</td>
                                            <td class="a-right a-right ">$741.20</td>
                                            <td class=" last"><a href="#">View</a>
                                            </td>
                                        </tr>
                                        <tr class="even pointer">
                                            <td class="a-center ">
                                                <input type="checkbox" class="flat" name="table_records">
                                            </td>
                                            <td class=" ">121000038</td>
                                            <td class=" ">May 26, 2014 10:55:33 PM</td>
                                            <td class=" ">121000203</td>
                                            <td class=" ">Mike Smith</td>
                                            <td class=" ">Paid</td>
                                            <td class="a-right a-right ">$432.26</td>
                                            <td class=" last"><a href="#">View</a>
                                            </td>
                                        </tr>
                                        <tr class="odd pointer">
                                            <td class="a-center ">
                                                <input type="checkbox" class="flat" name="table_records">
                                            </td>
                                            <td class=" ">121000037</td>
                                            <td class=" ">May 26, 2014 10:52:44 PM</td>
                                            <td class=" ">121000204</td>
                                            <td class=" ">Mike Smith</td>
                                            <td class=" ">Paid</td>
                                            <td class="a-right a-right ">$333.21</td>
                                            <td class=" last"><a href="#">View</a>
                                            </td>
                                        </tr>

                                        <tr class="even pointer">
                                            <td class="a-center ">
                                                <input type="checkbox" class="flat" name="table_records">
                                            </td>
                                            <td class=" ">121000040</td>
                                            <td class=" ">May 27, 2014 11:47:56 PM </td>
                                            <td class=" ">121000210</td>
                                            <td class=" ">John Blank L</td>
                                            <td class=" ">Paid</td>
                                            <td class="a-right a-right ">$7.45</td>
                                            <td class=" last"><a href="#">View</a>
                                            </td>
                                        </tr>
                                        <tr class="odd pointer">
                                            <td class="a-center ">
                                                <input type="checkbox" class="flat" name="table_records">
                                            </td>
                                            <td class=" ">121000039</td>
                                            <td class=" ">May 28, 2014 11:30:12 PM</td>
                                            <td class=" ">121000208</td>
                                            <td class=" ">John Blank L</td>
                                            <td class=" ">Paid</td>
                                            <td class="a-right a-right ">$741.20</td>
                                            <td class=" last"><a href="#">View</a>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /page content -->

        <%@include file="/views/footer.jsp"%>
    </div>
</div>
<%@include file="/views/footer_scripts.jsp"%>

</body>
</html>

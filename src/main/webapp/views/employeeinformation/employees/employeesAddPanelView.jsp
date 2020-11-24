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

                 <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h3>Employees</h3>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <form class="" action="/Employees/EmployeesAddPanelViewAction" method="post" novalidate id="frmmain" name="frmmain">
                                    <span class="section">Personal Info</span>

                                    <div class="field item form-group">
                                        <label class="col-form-label col-md-2 col-sm-2  label-align">Name<span class="required">*</span></label>
                                        <div class="col-md-4 col-sm-4">
                                            <input class="form-control" data-validate-length-range="6" data-validate-words="2" name="name" placeholder="ex. John f. Kennedy" required="required" />
                                        </div>

                                        <label class="col-form-label col-md-2 col-sm-2  label-align">Email<span class="required">*</span></label>
                                        <div class="col-md-4 col-sm-4">
                                            <input class="form-control" name="email" class='email' required="required" type="email" />
                                        </div>
                                    </div>


                                    <div class="field item form-group">
                                        <label class="col-form-label col-md-2 col-sm-2  label-align">Employee Code<span class="required">*</span></label>
                                        <div class="col-md-4 col-sm-4">
                                            <input class="form-control" data-validate-length-range="6" name="empcode"  required="required" />
                                        </div>

                                        <label class="col-form-label col-md-2 col-sm-2  label-align">User Name<span class="required">*</span></label>
                                        <div class="col-md-4 col-sm-4">
                                            <input class="form-control" data-validate-length-range="6" name="usename"  required="required" />
                                        </div>
                                    </div>

                                    <div class="field item form-group">
                                        <label class="col-form-label col-md-2 col-sm-2  label-align">Mobile No<span class="required">*</span></label>
                                        <div  class="col-md-4 col-sm-4">
                                            <input class="form-control" type="number" class='number' name="mobileno" data-validate-minmax="10,100" required='required'>
                                        </div>

                                        <label class="col-form-label col-md-2 col-sm-2  label-align">Date Of Birth<span class="required">*</span></label>
                                        <div class="col-md-4 col-sm-4">
                                            <input class="form-control" class='date' type="date" name="dateofbirth" required='required'>
                                        </div>
                                    </div>

                                    <div class="ln_solid">
                                        <div class="form-group">
                                            <div class="col-md-6 offset-md-3" style="padding-top: 10px;float: right">
                                                <button type='submit' class="btn btn-primary">Submit</button>
                                                <button type='reset' class="btn btn-success">Reset</button>
                                            </div>
                                        </div>
                                    </div>


                                </form>
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

<!-- Javascript functions	-->
<script>
    function hideshow(){
        var password = document.getElementById("password1");
        var slash = document.getElementById("slash");
        var eye = document.getElementById("eye");

        if(password.type === 'password'){
            password.type = "text";
            slash.style.display = "block";
            eye.style.display = "none";
        }
        else{
            password.type = "password";
            slash.style.display = "none";
            eye.style.display = "block";
        }

    }
</script>

<script>
    // initialize a validator instance from the "FormValidator" constructor.
    // A "<form>" element is optionally passed as an argument, but is not a must
    var validator = new FormValidator({
        "events": ['blur', 'input', 'change']
    }, document.forms[0]);
    // on form "submit" event
    document.forms[0].onsubmit = function(e) {
        var submit = true,
            validatorResult = validator.checkAll(this);
        console.log(validatorResult);
        return !!validatorResult.valid;
    };
    // on form "reset" event
    document.forms[0].onreset = function(e) {
        validator.reset();
    };
    // stuff related ONLY for this demo page:
    $('.toggleValidationTooltips').change(function() {
        validator.settings.alerts = !this.checked;
        if (this.checked)
            $('form .alert').remove();
    }).prop('checked', false);

</script>

</body>
</html>

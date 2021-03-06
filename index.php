<?php

include 'php/reroute.php';

main();

?>

<!DOCTYPE html>

<html lang="en">



<head>

    <title>UTP Fault Reporting System</title>

    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="css/style.css" />

    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>



<body>

    <div>

        <div class="row" id="center-div">

            <div class="col-lg-5 col-md-5 col-sm-8 col-xs-9 bhoechie-tab-container">

                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 bhoechie-tab-menu">

                    <div class="list-group">

                        <a href="#" class="list-group-item active text-center">

                            <h4 class="glyphicon glyphicon-user"></h4>

                            <br/>Log In

                        </a>

                        <a href="#" class="list-group-item text-center">

                            <h4 class="glyphicon glyphicon-th-list"></h4>

                            <br/>Sign Up

                        </a>

                    </div>

                </div>

                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9 bhoechie-tab">

                    <!-- flight section -->

                    <div class="bhoechie-tab-content active">

                        <center>

                            <h1 class="glyphicon glyphicon-user" style="font-size:8em;color:#2cc185 "></h1>

                            <h2 style="margin-top: 0;color:#2cc185 ">Log In</h2>

                        </center>

                        <div class="form-group">

                            <label style="left:0">Matric ID:</label>

                            <input type="text" class="form-control" id="lid" placeholder="Enter ID" name="lid">

                        </div>

                        <div class="form-group">

                            <label for="pwd">Password:</label>

                            <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">

                        </div>

                        <button type="button" class="btn btn-success" onclick="login()">Log In</button>

                    </div>

                    <!-- train section -->

                    <div class="bhoechie-tab-content">

                        <center>

                            <h1 class="glyphicon glyphicon-th-list" style="font-size:8em;color:#2cc185 "></h1>

                            <h2 style="margin-top: 0;color:#2cc185 ">Sign Up</h2>

                        </center>

                        <div class="form-group" id="signup">

                            <label style="left:0">Name:</label>

                            <input type="text" class="form-control" id="name" placeholder="John Wick" name="name">

                        </div>

                        <div class="form-group">

                            <label style="left:0">Email:</label>

                            <input type="email" class="form-control" id="semail" placeholder="abc@test.com" name="email">

                        </div>

                        <div class="form-group">

                            <label style="left:0">Phone Number:</label>

                            <input type="text" class="form-control" id="phone" placeholder="0123456789" name="phone">

                        </div>

                        <div class="form-group">

                            <label style="left:0">Matric ID:</label>

                            <input type="text" class="form-control" id="id" placeholder="22121" name="id">

                        </div>

                        <div class="form-group">

                            <label style="left:0">Room:</label>

                            <input type="text" class="form-control" id="room" placeholder="V5B-L5-02-02" name="room">

                        </div>

                        <div class="form-group">

                            <label for="pwd">Password:</label>

                            <input type="password" class="form-control" id="spwd" name="pwd">

                        </div>

                        <div class="form-group">

                            <label for="pwd">Re-type Password:</label>

                            <input type="password" class="form-control" id="repwd" name="repwd">

                        </div>

                        <button type="button" class="btn btn-success" onclick="signup()">Sign Up</button>

                    </div>

                </div>

            </div>

        </div>

    </div>

    <!-- Modal -->

    <div class="modal fade" id="myModal" role="dialog">

        <div class="modal-dialog">

            <!-- Modal content-->

            <div class="modal-content">

                <div class="modal-header">

                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                    <h4 class="modal-title">Error</h4>

                </div>

                <div class="modal-body">

                    <p id="errText"></p>

                </div>

                <div class="modal-footer">

                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                </div>

            </div>

        </div>

    </div>

    <script>

    $(document).ready(function() {

        $("div.bhoechie-tab-menu>div.list-group>a").click(function(e) {

            e.preventDefault();

            $(this).siblings('a.active').removeClass("active");

            $(this).addClass("active");

            var index = $(this).index();

            $("div.bhoechie-tab>div.bhoechie-tab-content").removeClass("active");

            $("div.bhoechie-tab>div.bhoechie-tab-content").eq(index).addClass("active");

        });





    });

    </script>

    <script src="js/function.js"></script>

</body>



</html>
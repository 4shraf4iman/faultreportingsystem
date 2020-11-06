
<?php
session_start();

function main(){
        if(isset($_SESSION['id'])){
	if($_SESSION['id']){
		if($_SESSION['id'] == 'admin'){
			header("Location: http://localhost/utpfaultsystem/admin/");/*for security purposes means if logged in admin it cant go to user*/
		} else {
			header("Location: http://localhost/utpfaultsystem/user");/*if logged in as user it cant go to admin*/
		}
	}
        }	
}

function admin(){
        if(isset($_SESSION['id'])){
	if($_SESSION['id']){
		if($_SESSION['id'] != 'admin'){/*if typed in id not as an admin it will reroute as a user*/
			header("Location: http://localhost/utpfaultsystem/user");
		}
	} else {
		header("Location: http://localhost/http://localhost/utpfaultsystem/");
	}
} else {
header("Location: http://localhost/utpfaultsystem/");/*cant change to admin domain even if they tried*/
}	
}

function user(){

        if(isset($_SESSION['id'])){
	if($_SESSION['id']){
		if($_SESSION['id'] == 'admin'){/*if id is typed as admin it will reroute as admin*/
			header("Location: http://localhost/utpfaultsystem/admin");
		}
	} else {
		header("Location: http://localhost/utpfaultsystem/");
	}
} else {
header("Location: http://localhost/");/* cant change the domain to user even if they tried*/
}	
}
?>
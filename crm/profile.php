<?php
require('top.inc.php');
check_auth();
$msg="";
$id=$_SESSION['QR_USER_ID'];
	$res = mysqli_query($con,"select * from users where id='$id'");
	if(mysqli_num_rows($res)>0){
	$row = mysqli_fetch_assoc($res);
	$name= $row['name'];
	$email= $row['email'];
	$mobile= $row['mobile'];
	$password= $row['password'];
}
if(isset($_POST['submit']))
{
	$name = get_safe_value($con,$_POST['name']);
	$email = get_safe_value($con,$_POST['email']);
	$mobile = get_safe_value($con,$_POST['mobile']);
	$password = password_hash(get_safe_value($con,$_POST['password']),PASSWORD_DEFAULT);
	$role = 1;
	$status = 1;
	$added_on = date('Y-m-d h:i:s');
	$email_sql="";
	if($id>0){
		$email_sql = " and id!='$id'";
	}
	if(mysqli_num_rows(mysqli_query($con,"select * from users where email='$email' $email_sql"))>0)
	{
		$msg = "Email id already used";
	}else{
		if($id>0){
			$password_sql="";
			if($password == ''){
				$password_sql=",password='$password'";
			}
			mysqli_query($con, "update users set name='$name',email='$email',mobile='$mobile',password='$password' $password_sql where id='$id'");
	redirect('profile.php');
		}else{
			mysqli_query($con, "insert into users(name,email,mobile,password,role,status,added_on) values('$name','$email','$mobile','$password','$role','$status','$added_on')");
	redirect('profile.php');
		}

	
	}
}


?>
<div class="content pb-0">
            <div class="animated fadeIn">
               <div class="row">
                  <div class="col-lg-12">
                     <div class="card">
                        <div class="card-header"><strong>Update Your Profile</strong></div>
                        <form method="post" enctype="multipart/form-data">
							<div class="card-body card-block">
								<div class="form-group">
									<label for="name" class=" form-control-label">Name</label>
									<input type="text" name="name" placeholder="Enter name" class="form-control" required value="<?php echo $name?>">
								</div>
								
								<div class="form-group">
									<label for="email" class=" form-control-label">User Email</label>
									<input type="text" name="email" placeholder="Enter user email" class="form-control" required value="<?php echo $email?>">
								</div>
								
								
								<div class="form-group">
									<label for="mobile" class=" form-control-label">Mobile No</label>
									<input type="number" name="mobile" placeholder="Enter mobile number" class="form-control" required value="<?php echo $mobile?>">
								</div>
								<?php if(!isset($_GET['id'])){ ?>
								<div class="form-group">
									<label for="mobile" class=" form-control-label">Password</label>
									<input type="password" name="password" placeholder="Enter password" class="form-control" required>
								</div><?php } ?>
							   <button id="payment-button" name="submit" type="submit" class="btn btn-lg btn-info btn-block">
							   <span id="payment-button-amount">Update Your Details</span>
							   </button>
                               <div class="field_error"><span style="color:red;font-size:17px;"><?php echo $msg?></span></div>
							</div>
						</form>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         
<?php
require('footer.inc.php');
?>
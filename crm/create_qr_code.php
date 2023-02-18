<?php
require('top.inc.php');
check_auth();
$msg="";
$name= '';
$link= '';
$color= '';
$width= '';
$height= '';
$id=0;
$condition="";
if($_SESSION['QR_USER_ROLE']==1){
	$condition=" and added_by='".$_SESSION['QR_USER_ID']."'";
}
if(isset($_GET['id']) && $_GET['id']>0)
{
	$id = get_safe_value($con,$_GET['id']);
	$res = mysqli_query($con,"select * from qr_code where id='$id' $condition");
	if(mysqli_num_rows($res)>0){
	$row = mysqli_fetch_assoc($res);
	$name= $row['name'];
	$link= $row['link'];
	$color= $row['color'];
	$width= $row['width'];
	$height= $row['height'];
}else{
	redirect('qrcode.php');
}
}
if(isset($_POST['submit']))
{
	$name = get_safe_value($con,$_POST['name']);
	$link = get_safe_value($con,$_POST['link']);
	$color = "#000";
	$width = "350";
	$height = "350";
	$added_by = $_SESSION['QR_USER_ID'];
	$status = 1;
	$added_on = date('Y-m-d h:i:s');
	if(isset($_POST['link']) == true && empty($_POST['link']) == false)
	{
	    if(filter_var($link, FILTER_VALIDATE_URL) == true)
	    {
	        if($id>0){
			
			mysqli_query($con, "update qr_code set name='$name',link='$link',color='$color',width='$width',height='$height' where id='$id' $condition");
	redirect('qrcode.php');
		}else{
			mysqli_query($con, "insert into qr_code(name,link,color,width,height,added_by,status,added_on) values('$name','$link','$color','$width','$height','$added_by','$status','$added_on')");
	redirect('qrcode.php');
		}
	    }else{
	        $msg = "Looks like the link is invalid, please use http:// if not used. eg - http://www.google.com";
	    }
		
}
	
	}



?>
<div class="content pb-0">
            <div class="animated fadeIn">
               <div class="row">
                  <div class="col-lg-12">
                     <div class="card">
                        <div class="card-header"><strong><?php if(isset($_GET['id']) && $_GET['id']!=''){ ?>Edit <?php }else{ ?>Enter New <?php }?> QR Details</strong></div>
                        <form method="post" enctype="multipart/form-data">
							<div class="card-body card-block">
								<div class="form-group">
									<label for="name" class=" form-control-label">Name</label>
									<input type="text" name="name" placeholder="Enter name" class="form-control" required value="<?php echo $name?>">
								</div>
								
								<div class="form-group">
									<label for="email" class=" form-control-label">Link <span style="color:red;font-size:17px;">(Important - Please use http:// before www)</span></label>
									<input type="link" name="link" placeholder="Enter link" class="form-control" required value="<?php echo $link?>">
								</div>
								
								
								
								
								
							   <button id="payment-button" name="submit" type="submit" class="btn btn-lg btn-info btn-block">
							   <span id="payment-button-amount">Submit</span>
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
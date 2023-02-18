<?php
require('top.inc.php');
check_auth();
$condition="";
if($_SESSION['QR_USER_ROLE']==1){
	$condition=" and added_by='".$_SESSION['QR_USER_ID']."'";
}
$chl="";
$chs = "";
if(isset($_GET['type']) && $_GET['type']=='download')
{
    $did=get_safe_value($con,$_GET['id']);
    $dname=get_safe_value($con,$_GET['name']);
	$link = "https://chart.googleapis.com/chart?cht=qr&chs=350x350&chl=https://graphiczoneqr.com/a.php?id=".$_GET['id'];
	header('Content-type: application/x-file-to-save');
	header('Content-Disposition: attachment;filename='.$dname.'.jpg');
	ob_end_clean();
	readfile($link);
}

if(isset($_GET['type']) && $_GET['type']!=''){
	$type=get_safe_value($con,$_GET['type']);
	if($type=='status'){
		$operation=get_safe_value($con,$_GET['operation']);
		$id=get_safe_value($con,$_GET['id']);
		if($operation=='active'){
			$status='1';
		}else{
			$status='0';
		}
		$update_status_sql="update qr_code set status='$status' where id='$id' $condition";
		mysqli_query($con,$update_status_sql);
	}
if(isset($_GET['type']) && $_GET['type']!=''){
	$type=get_safe_value($con,$_GET['type']);
	if($type=='delete'){
		$id=get_safe_value($con,$_GET['id']);
		$delete_sql="delete from qr_code where id='$id' $condition";
		mysqli_query($con,$delete_sql);
	}
}
}
$sql="select qr_code.*,users.email from qr_code,users where 1 and qr_code.added_by=users.id $condition";
if(isset($_GET['search_submit']))
{
    $search = get_safe_value($con,$_GET['search']);
    if($search!=''){
        $sql.=" where qr_code.id like '%$search%' or qr_code.name like '%$search%' or qr_code.link like '%$search%' order by id desc";
    }
}else{
        $sql.=" order by qr_code.id desc";
    }
$res=mysqli_query($con,$sql);
?>
<div class="content pb-0">
	<div class="orders">
	   <div class="row">
		  	<div class="col-xl-12">
			 <div class="card">
				<div class="card-body" style="height:100px;">
				    <div class="custbtn">
				   <a href="create_qr_code.php" style="width: 25%;margin-top:0px;height: 45px;margin-left:20px;" class="btn btn-lg btn-info btn-block"><span id="payment-button-amount1">Add New</span>
				</a>
				</div>
				<div>
			
				    <form method="get">
							<div class="card-body card-block">
                                <div class="form-group" style="margin-top: -64px; margin-left:380px;">
									<input  type="text" style="width:70%;margin-bottom:-5px;height:45px;margin-left:58px;" name="search" placeholder="Search in qr code - id, title, link..." class="form-control">
							        <button style="width: 25%;margin-top: -62px;height: 45px;margin-left:440px;" id="payment-button" name="search_submit" type="submit" class="btn btn-lg btn-info btn-block"><span id="payment-button-amount">Search</span>
							        </button>
							    </div>
							</div>
						</form>
				</div>
				</div>
	
				<div class="card-body--">
				   <div class="table-stats order-table ov-h">
					  <table class="table, table-cust">
						 <thead>
							<tr>
							   <th>ID</th>
							   <th>Title</th>
							   <th>QR Code</th>
							   <th>Link</th>
							   
                               <th>Added On</th>
                               <th>Status</th>
							</tr>
						 </thead>
						 <?php if(mysqli_num_rows($res)>0){?>
						 <tbody>
							<?php 
							while($row=mysqli_fetch_assoc($res)){?>
							<tr>
							   <td data-label="ID"><?php echo $row['id']?></td>
							   <td data-label="Title"><?php echo $row['name']?>
							   <?php if($_SESSION['QR_USER_ROLE']==0){ ?>
							   </br></br>Added <span style="text-transform:lowercase;">by</span>: <a href="mailto:<?php echo $row['email']; ?>" style="text-transform:lowercase;"><?php echo $row['email']; ?></a>
                            <?php } ?>
                               </td>
							   <td data-label="QR Code">
								<?php	
							$url= "https://chart.googleapis.com/chart?cht=qr&chs={$row['width']}x{$row['height']}&chl={$qr_file_path}?id={$row['id']}";
						
    							$output['img']=$url; 
									?>
									<img src="<?php echo $output['img']?>" alt="QR Code" width="100px"> 
									<br> <a href="report.php?id=<?php echo $row['id'];?>">Report</a>
									
									 

							   <td data-label="Link"><a href="<?php echo $row['link']?>" target="_blanck" style="text-transform:lowercase;"><?php echo $row['link']?></a></td>
                               
							   <td data-label="Added on"><?php echo getCustomDate($row['added_on']);?></td>
							   <td data-label="Status">
                               <?php
								if($row['status']==1){
									echo "<span class='badge badge-complete' ><a href='?type=status&operation=deactive&id=".$row['id']."'><x style='color:#fff;font-weight:bold;'>Active</x></a></span>&nbsp;";
								}else{
									echo "<span class='badge badge-pending'><a href='?type=status&operation=active&id=".$row['id']."'><x style='color:#fff;font-weight:bold;'>Deactive</x></a></span>&nbsp;";
								}
                                echo "<span class='badge badge-edit' style='background-color:blue;'><a href='create_qr_code.php?id=".$row['id']."'><x style='color:#fff;font-weight:bold;'>Edit</x></a></span>&nbsp;";?></br></br><?php
								echo "<span class='badge badge-delete' style='background-color:red;'><a href='?type=delete&id=".$row['id']."'><x style='color:#fff;font-weight:bold;'>Delete</x></a></span>&nbsp;";
								echo "<span class='badge badge-delete' style='background-color:#ffa238;'><a href='?type=download&id=".$row['id']."&name=".$row['name']."'> <x style='color:#fff;font-weight:bold;'>Download</x></a></span>";
								?>
							   </td>
							</tr>
							<?php } ?>
						 </tbody><?php }else{ ?>
							<tbody>
								<p style="text-align:center;">No data found</p>						</tbody>
							<?php } ?>
					  </table>
				   </div>
				</div>
			 </div>
		  </div>
	   </div>
	</div>
</div>
<?php
require('footer.inc.php');
?>
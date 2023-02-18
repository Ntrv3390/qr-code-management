<?php
require('top.inc.php');
check_auth();
check_admin_auth();
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
		$update_status_sql="update users set status='$status' where id='$id'";
		mysqli_query($con,$update_status_sql);
	}
if(isset($_GET['type']) && $_GET['type']!=''){
	$type=get_safe_value($con,$_GET['type']);
	if($type=='delete'){
		$id=get_safe_value($con,$_GET['id']);
		$delete_sql="delete from users where id='$id'";
		mysqli_query($con,$delete_sql);
	}
}
}
$sql="select * from users where role='1'";
if(isset($_GET['search_submit']))
{
    $search = get_safe_value($con,$_GET['search']);
    if($search!=''){
        $sql.=" and users.id like '%$search%' or users.name like '%$search%' or users.email like '%$search%' or users.mobile like '%$search%' order by id desc";
    }
}else{
        $sql.=" order by id desc";
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
				   <a href="create_users.php" style="width: 25%;margin-top:0px;height: 45px;margin-left:20px;" class="btn btn-lg btn-info btn-block"><span id="payment-button-amount1">Add New</span>
				</a></div>
				    <form method="get">
							<div class="card-body card-block">
                                <div class="form-group" style="margin-top: -64px; margin-left:380px;">
									<input  type="text" style="width:70%;margin-bottom:-5px;height:45px;margin-left:58px;" name="search" placeholder="Search in users - id, name, email, number..." class="form-control">
							        <button style="width: 25%;margin-top: -62px;height: 45px;margin-left:440px;" id="payment-button" name="search_submit" type="submit" class="btn btn-lg btn-info btn-block"><span id="payment-button-amount">Search</span>
							        </button>
							    </div>
							</div>
						</form>
				</div>
				<div class="card-body--">
				   <div class="table-stats order-table ov-h">
					  <table class="table , table-cust">
						 <thead>
							<tr>
							  
							   <th>ID</th>
							   <th>Name</th>
							   <th>Email</th>
							   <th>Mobile</th>
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
							   <td data-label="Name"><?php echo $row['name']?></td>
							   <td data-label="Email" style="text-transform:lowercase;"><a href="mailto:<?php echo $row['email']?>"><?php echo $row['email']?></a></td>
							   <td data-label="Mobile"><?php echo $row['mobile']?></td>
							   <td data-label="Added On"><?php echo getCustomDate($row['added_on'])?></td>
							   <td data-label="Status">
                               <?php
								if($row['status']==1){
									echo "<span class='badge badge-complete'><a href='?type=status&operation=deactive&id=".$row['id']."'><x style='color:#fff;font-weight:bold;'>Active</x></a></span>&nbsp;";
								}else{
									echo "<span class='badge badge-pending'><a href='?type=status&operation=active&id=".$row['id']."'><x style='color:#fff;font-weight:bold;'>Deactive</x></a></span>&nbsp;";
								}
                                echo "<span class='badge badge-edit' style='background-color:blue;'><a href='create_users.php?id=".$row['id']."'><x style='color:#fff;font-weight:bold;'>Edit</x></a></span>&nbsp;";
								//echo "<span class='badge badge-delete'><a href='?type=delete&id=".$row['id']."'>Delete</a></span>";
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
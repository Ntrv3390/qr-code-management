<?php
require('top.inc.php');
check_auth();
if(isset($_GET['id']) && $_GET['id']>0)
{
    $condition="";
if($_SESSION['QR_USER_ROLE']==1){
	$condition=" and qr_code.added_by='".$_SESSION['QR_USER_ID']."'";
}
    $id=get_safe_value($con,$_GET['id']);
    $res=mysqli_query($con,"select qr_report.*,qr_code.name from qr_report,qr_code where qr_report.qr_id=qr_code.id and qr_code.id='$id' $condition");
    
    if(mysqli_num_rows($res)>0)
    {
        
    }else{
        redirect('qrcode.php');
    }
}
?>

<div class="content pb-0">
            <div class="animated fadeIn">
               <div class="row">
                  <div class="col-lg-12">
                     <div class="card">
                        <div class="card-header"><strong>Detailed Report</strong><br><br>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
<div class="content pb-0">
	<div class="orders">
	   <div class="row">
		  	<div class="col-xl-12">
			 <div class="card">
				<div class="card-body--">
				   <div class="table-stats order-table ov-h">
					  <table class="table ">
                      <thead>
							<tr>
							   
							   <th>Device</th>
							   <th>OS</th>
							   <th>Browser</th>
                               <th>City</th>
                               <th>State</th>
                               <th>Country</th>
                               <th>IP Address</th>
							</tr>
						 </thead>
                         <tbody>
                        <?php while($row = mysqli_fetch_assoc($res))
                         { 
                            $arr[] = $row; 
                            foreach($arr as $data){
                            ?>
                            <tr>
                              
                                <td>
                                    <?php echo $data['device'] ?>
                                </td>
                                <td>
                                    <?php echo $data['os'] ?>
                                </td>
                                <td>
                                    <?php echo $data['browser'] ?>
                                </td>
                                <td>
                                    <?php echo $data['city'] ?>
                                </td>
                                <td>
                                    <?php echo $data['state'] ?>
                                </td>
                                <td>
                                    <?php echo $data['country'] ?>
                                </td>
                                <td>
                                    <?php echo $data['ip_address'] ?>
                                </td>
                            </tr>
                            <?php } }?>
                        </tbody>
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
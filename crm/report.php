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
    $res=mysqli_query($con,"select count(*) as total_record,qr_report.*,qr_code.name from qr_report,qr_code where qr_report.qr_id=qr_code.id and qr_code.id='$id' $condition group by qr_report.added_on_str");
    
    if(mysqli_num_rows($res)>0)
    {
        
    }else{
        redirect('qrcode.php');
    }
    
    $deviceChartStr="";
    $resDevice=mysqli_query($con,"select count(*) as total_record,qr_report.device from qr_report where qr_id='$id'  group by qr_report.device");
    while($rowDevice=mysqli_fetch_assoc($resDevice)){
        $deviceChartStr.="['".$rowDevice['device']."', ".$rowDevice['total_record']."],";
    }
    $deviceChartStr=rtrim($deviceChartStr,",");

    $osChartStr="";
    $resOs=mysqli_query($con,"select count(*) as total_record,qr_report.os from qr_report where qr_id='$id'  group by qr_report.os");
    while($rowOs=mysqli_fetch_assoc($resOs)){
        $osChartStr.="['".$rowOs['os']."', ".$rowOs['total_record']."],";
    }
    $osChartStr=rtrim($osChartStr,",");

    $browserChartStr="";
    $resBrowser=mysqli_query($con,"select count(*) as total_record,qr_report.browser from qr_report where qr_id='$id'  group by qr_report.browser");
    while($rowBrowser=mysqli_fetch_assoc($resBrowser)){
        $browserChartStr.="['".$rowBrowser['browser']."', ".$rowBrowser['total_record']."],";
    }
    $browserChartStr=rtrim($browserChartStr,",");
}
?>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawDeviceChart);
      google.charts.setOnLoadCallback(drawOsChart);
      google.charts.setOnLoadCallback(drawBrowserChart);

      function drawDeviceChart() {

var data = google.visualization.arrayToDataTable([
  ['Device', 'Total Users'],
  <?php echo $deviceChartStr; ?>
]);

var options = {
  title: 'Device'
};

var chart = new google.visualization.PieChart(document.getElementById('device'));

chart.draw(data, options);
}

function drawOsChart() {

var data = google.visualization.arrayToDataTable([
  ['OS', 'Total Users'],
  <?php echo $osChartStr; ?>
]);

var options = {
  title: 'OS'
};

var chart = new google.visualization.PieChart(document.getElementById('os'));

chart.draw(data, options);
}

function drawBrowserChart() {

var data = google.visualization.arrayToDataTable([
  ['Browser', 'Total Users'],
  <?php echo $browserChartStr; ?>
]);

var options = {
  title: 'Browser'
};

var chart = new google.visualization.PieChart(document.getElementById('browser'));

chart.draw(data, options);
}




      </script>


<div class="content pb-0">
            <div class="animated fadeIn">
               <div class="row">
                  <div class="col-lg-12">
                     <div class="card">
                        <div class="card-header"><strong>Reports</strong><br><br>
                        <a href="qr_detail.php?id=<?php echo $id; ?>" style="width: 25%;margin-top:0px;height: 45px;margin-left:20px;" class="btn btn-lg btn-info btn-block"><span id="payment-button-amount1">Detailed Report</span>
				</a>
                        <a href="qr_detail.php?id=<?php echo $id; ?>"><b></b></a>
                        </div>
                     </div>
                  </div>
                  
                  <div class="col-lg-4">
                     <div class="card">
                        <div class="card-body" id="device"></div>
                     </div>
                  </div>
                  <div class="col-lg-4">
                     <div class="card">
                        <div class="card-body" id="os"></div>
                     </div>
                  </div>
                  <div class="col-lg-4">
                     <div class="card">
                        <div class="card-body" id="browser"></div>
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
							   <th>ID</th>
							   <th>QR Code</th>
							   <th>Date</th>
							   <th>Count</th>
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
                                    <?php echo $data['id'] ?>
                                </td>
                                <td>
                                    <?php echo $data['name'] ?>
                                </td>
                                <td>
                                    <?php echo getCustomDate($data['added_on']) ?>
                                </td>
                                <td>
                                    <?php echo $data['total_record'] ?>
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
<?php
include('crm/connection.inc.php');
include('crm/functions.inc.php');
include('crm/lib/BrowserDetection.php');
include('crm/lib/Mobile_Detect.php');

if(isset($_GET['id']) && $_GET['id']>0)
{
    $id=get_safe_value($con,$_GET['id']);
    $res=mysqli_query($con,"select link from qr_code where id='$id' and status='1'");
    if(mysqli_num_rows($res)>0)
    {
        $row = mysqli_fetch_assoc($res);
        $device="";
$os="";
$link=$row['link'];
$detect = new Mobile_Detect();
$Browser = new foroco\BrowserDetection();

$useragent = 'Mozilla/5.0 (iPad; CPU OS 9_3_4 like Mac OS X) AppleWebKit/601.1 (KHTML, like Gecko) CriOS/80.0.3987.122 Mobile/13G35 Safari/601.1.46';
$browser = $Browser->getBrowser($useragent);
$browserDetect=$browser['browser_name'];
if($detect->isMobile()){
    $device="Mobile";
}else if($detect->isTablet()){
    $device="Tablet";
}else{
    $device="PC";
}
if($detect->isiOS()){
    $os="iOS";
}else if($detect->isAndroidOS()){
    $os="Android";
}else{
    $os="Windows";
}

$ch=curl_init();
curl_setopt($ch,CURLOPT_URL,"http://ip-api.com/json");
curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
$result=curl_exec($ch);
curl_close($ch);
$result=json_decode($result,true);
$city=$result['city'];
$state=$result['regionName'];
$country=$result['country'];
$ip=$result['query'];
$added_on=date('Y-m-d h:i:s');
$added_on_str=date('Y-m-d');
mysqli_query($con,"insert into qr_report(qr_id,device,browser,os,city,state,country,added_on,added_on_str,ip_address) values('$id','$device','$browserDetect','$os','$city','$state','$country','$added_on','$added_on_str','$ip')");
redirect($link);
    }else{
        die('Something went wrong');
    }
}
?>
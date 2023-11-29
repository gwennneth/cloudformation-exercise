<?php

require 'AWSSDK/aws.phar';

//Get the application environment parameters from the Parameter Store.

$az = file_get_contents('http://169.254.169.254/latest/meta-data/placement/availability-zone');
$region = substr($az, 0, -1);

$ssm_client = new Aws\Ssm\SsmClient([
    'version' => 'latest',
    'region'  => $region
]);

$result = $ssm_client->GetParametersByPath(['Path' => '/mompopcafe']);

$showServerInfo = "";
$timeZone = "";
$currency = "";
$db_url = "";
$db_name = "";
$db_user = "";
$db_password = "";

foreach($result['Parameters'] as $p) {
    if ($p['Name'] == '/mompopcafe/showServerInfo') $showServerInfo = $p['Value'];
	if ($p['Name'] == '/mompopcafe/timeZone') $timeZone = $p['Value'];
    if ($p['Name'] == '/mompopcafe/currency') $currency = $p['Value'];
    if ($p['Name'] == '/mompopcafe/dbUrl') $db_url = $p['Value'];
    if ($p['Name'] == '/mompopcafe/dbName') $db_name = $p['Value'];
    if ($p['Name'] == '/mompopcafe/dbUser') $db_user = $p['Value'];
    if ($p['Name'] == '/mompopcafe/dbPassword') $db_password = $p['Value'];
}

?>
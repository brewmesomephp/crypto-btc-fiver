<?php
require_once('easybitcoin.php');
$bitcoin = new Bitcoin('someusername','somepassword');

print "<h2>Get info: </h2>";
print_r( $bitcoin->getinfo());
print "<br />";

print "<h1>Create 3 new wallets and create a multisig account with it</h1>";
for ($i = 0; $i <= 2; $i++){
	$address[$i] = $bitcoin->getnewaddress();
	print "Address $i: " . $address[$i] . "<br />";
	$priv_key[$i] = $bitcoin->dumpprivkey($address[$i]);
	print "Private Key $i: " . $priv_key[$i] . "<br /><br />";
}

print "<h2>Multisig Account</h2>";
$a1 = $address[0];
$a2 = $address[1];
$a3 = $address[2];
$multisig = $bitcoin->createmultisig(2, ["$a1", "$a2", "$a3"]);
$ms_addy = $multisig['address'];
$ms_redeem = $multisig['redeemScript'];

print "Multisig Address: $ms_addy <br />";
print "Multisig Redeem: $ms_redeem <br />";
print $bitcoin->status();
?>

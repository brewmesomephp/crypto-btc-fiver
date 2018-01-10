<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

print "<h2>checking wallet: https://blockchain.info/address/17Jn1VYpwknwjuVxLMYvqc8iHJ6QsP8xDo</h2> <br />
and <h2>transaction https://blockchain.info/tx/ee65b8201e0e26827430b34872f6dd961f318e0c1e4c5266a6bcf8a8fa22a2ce</h2> ";
require_once('easybitcoin.php');
$bitcoin = new Bitcoin('admin','napster', 'localhost', '18332');
print "print_r(\$bitcoin);";
print_r($bitcoin);
// print_r($bitcoin->getinfo());
// print $bitcoin . " is it. <br />";

print "<h2>Get info: </h2>";
print_r( $bitcoin->getinfo());
print "<br />";

print "<br />Get Received By Address: " . $bitcoin->getreceivedbyaddress("17Jn1VYpwknwjuVxLMYvqc8iHJ6QsP8xDo");
print "<br />Validate Address: " . print_r( $bitcoin->validateaddress("17Jn1VYpwknwjuVxLMYvqc8iHJ6QsP8xDo"), 1);
print "<br />Transaction: " . print_r($bitcoin->gettransaction("ee65b8201e0e26827430b34872f6dd961f318e0c1e4c5266a6bcf8a8fa22a2ce"), 1);
print "<br />Raw Transaction: " . print_r($bitcoin->gettransaction("ee65b8201e0e26827430b34872f6dd961f318e0c1e4c5266a6bcf8a8fa22a2ce", 1), 1);
//print "<br />DumpPrivKey: " . print_r($bitcoin->dumpprivkey("L3sVgYSmRXFBSTH8N9DsLdmwSQsLgea475dMYoyyEji8HgPtG7je", 1),1);
print "<h3>L3sVgYSmRXFBSTH8N9DsLdmwSQsLgea475dMYoyyEji8HgPtG7je</h3>";
print $bitcoin->status();
?>

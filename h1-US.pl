#!/usr/local/bin/perl -w
# <fich_In> : sera en general le dictionnaire.
# <fich_out>: nouveau dictionnaire.


unless (@ARGV == 2) { die "usage : $0  <fich_In> <fich_out> \n";}

open(IN, "$ARGV[0]");
open(OUT, ">$ARGV[1]");

while ($_ = <IN>) {


  s/'/\n/g;   



  print OUT $_;
}


print "\n******* Fin *******\n";
close(IN);
close(OUT);	



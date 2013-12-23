#!/usr/bin/perl -w
# <fich_In> : sera en general le dictionnaire.
# <fich_out>: nouveau dictionnaire.


unless (@ARGV == 2) { die "usage : $0  <fich_In> <fich_out> \n";}

open(IN, "$ARGV[0]");
open(OUT, ">$ARGV[1]");

while ($_ = <IN>) {



  s/
//g;
  s/;2008/>;\n2008 &&\n/g;
  s/;2007/>;\n2007 &&\n/g;
  s/;2006/>;\n2006 &&\n/g;
  s/;2005/>;\n2005 &&\n/g;
  s/;2004/>;\n2004 &&\n/g;
  s/;2003/>;\n2003 &&\n/g;
  s/;2002/>;\n2002 &&\n/g;
  s/;2001/>;\n2001 &&\n/g;
  s/;2000/>;\n2000 &&\n/g;
  s/&nbsp;0;/\n0 &&\n/g;
  s/&nbsp;1;/\n1 &&\n/g;
  s/&nbsp;2;/\n2 &&\n/g;
  s/&nbsp;3/\n3 &&\n/g;
  s/&nbsp;4/\n4 &&\n/g;
  s/&nbsp;5/\n5 &&\n/g;
  s/&nbsp;6/\n6 &&\n/g;
  s/&nbsp;7/\n7 &&\n/g;
  s/&nbsp;8/\n8 &&\n/g;
  s/&nbsp;9/\n9 &&\n/g;
  s/<BR>/ \| <BR>/g;
  s/<\/B>\)<B>,/\)<\/B><B>,/g;
  s/<\/TD><\/TR>/| <\/TD><\/TR>/g;
  s/>;</>\n&& = \n</g;
  s/>.</>\n&& = \n</g;
  s/>,</>\n&& = \n</g;
  s/> </>\n&& = \n</g;
  s/</\n</g;
  s/>/>\n/g;
  s/;/;\n/g;
  s/, \| /,/g;
  s/\n\n/\n/g;
  s/\n\n/\n/g;
  s/\n\n/\n/g;


  print OUT $_;
}


print "\n******* Fin *******\n";
close(IN);
close(OUT);	



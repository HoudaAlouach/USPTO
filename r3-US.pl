#!/usr/bin/perl -w
# <fich_In> : sera en general le dictionnaire.
# <fich_out>: nouveau dictionnaire.


unless (@ARGV == 2) { die "usage : $0  <fich_In> <fich_out> \n";}

open(IN, "$ARGV[0]");
open(OUT, ">$ARGV[1]");

while ($_ = <IN>) {

  s/United States Patent:/\n\nUsp:\n/g;
  s/United States Patent/\nUSP:\n/g;
  s/Abstract/\nAB:\n/g;
  s/Inventors:/\nAU:\n/g;
  s/Assignee:/\nCO:\n/g; 
  s/Appl. No.:/\nNA:\n/g;
  s/Filed:/\nDD:\n/g;
  s/PCT Filed:/\nDd:\n/g;
  s/PCT No.:/\nNp:\n/g;
  s/Date:/\nDi:\n/g;
  s/PCT Pub. No.:/\nNr:\n/g;
  s/PCT Pub. Date:/\nDr:\n/g;
  s/Related U.S. Patent Documents/\nRU:\n/g; 
  s/References Cited/\nRC:\n/g; 
  s/Foreign Application Priority Data/\nFA:\n/g; 
  s/Current U.S. Class:/\nUC:\n/g; 
  s/Current International Class:/\nIC:\n/g;
  s/Field of Search:/\nFS:\n/g;
  s/U.S. Patent Documents/\nUS:\n/g;
  s/Foreign Patent Documents/\nFO:\n/g;
  s/Other References/\nOR:\n/g;
  s/Primary Examiner:/\nEX:\n/g;
  s/Assistant Examiner:/\nAE:\n/g;
  s/Attorney, Agent or Firm:/\nAG:\n/g;
  s/Description/\nDE:\n/g;
  s/Claims/\nCL:\n/g;
  s/:&nbsp;//g;
  s/&nbsp;//g;
  s/&lt;//g;
  s/%%/\n/g;
  s/&& = //g;
  s/          / /g;
  s/  / /g;
  s/  / /g;
  s/  / /g;
  s/  / /g;
  s/^ //g;
  s/^ //g;
  s/ \| \| / /g;
 
  print OUT $_;
}


print "\n******* Fin *******\n";
close(IN);
close(OUT);	



#!/usr/local/bin/perl

# http://perlmeme.org/howtos/perlfunc/split_function.html
# http://www.troubleshooters.com/codecorn/littperl/perlfile.htm
# http://perl.about.com/od/perltutorials/a/readwritefiles.htm
# http://www.tutorialspoint.com/perl/perl_arrays.htm

use strict;
use warnings;

my @dc_ids;

open(MYFILE, 'dc_cards.txt');
open (OUTFILE, '>dc_cards_output.txt');

while (<MYFILE>)
{
	chomp;
	my @values = split(',', $_);

	print OUTFILE "$values[1],$values[0]\n";
}

close(OUTFILE);
close(MYFILE);


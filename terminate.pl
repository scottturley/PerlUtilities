
my @cards = ();
my %cards1 = ();

open(CARDS,     'cards50000_full.txt');
open(TERMINATE, '>20130924_mass_operation_list.txt');

while (<CARDS>)
{
	chomp; 

	my @values = split(' ', $_);

	
	print TERMINATE "$values[2],$values[1]\n";

}

close(CARDS);
close(TERMINATE);


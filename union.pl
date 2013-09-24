
my @cards = ();
my %cards1 = ();

open(CARDS,   'card_ids5000.txt');
open(PRPTIES, 'card_prpties.txt');

while (<CARDS>)
{
	chomp; 

	push(@cards, $_);

}

while (<PRPTIES>)
{
	chomp;

	my @values = split('\t', $_);

	my @numbers = split(',', $values[1]);

	my $card = $numbers[0] . $numbers[1] . $numbers[2];

	$cards1{$card} = 1;

}

foreach (@cards)
{
	if (not exists $cards1{$_})
	{
		print "$_\n";
	} 
} 

close(CARDS);
close(PRPTIES);


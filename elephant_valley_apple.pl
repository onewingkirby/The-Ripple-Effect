#!/usr/bin/perl

#Open text file
open (my $text_file, '<', 'The Ripple Effect.txt') or die "Could not open file <The Ripple Effect.txt> : $!";

#Initialize Variables
my ($line_num, $ripple_start, $ripple_end) = (0,0,0);

#Process Lines
while (my $line = <$text_file>) {
    chomp($line);
    $line_num++;

    #Find Ripple Start
    if ($line =~ /ripple/) {
        $ripple_start = $line_num;
    }
    #Find Ripple End
    elsif ($line =~ /clash/) {
        $ripple_end = $line_num;
    }
}
close($text_file);

#Print Results
print "The Ripple Effect starts at line $ripple_start and ends at line $ripple_end.\n";
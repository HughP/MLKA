#!/usr/bin/perl

# countdigraphs.pl

# usage, to count the digraphs in foo.txt:

# countdigraphs.pl < foo.txt



$total = 0;
$first = 1;
while (<>) {
    chomp;
    s/\s+//g;
    @c = split(//,$_);
    for ($i=0; $i<scalar(@c)-1; $i++) {
	if ($c[$i] =~ /[A-Za-z]/ && $c[$i+1] =~ /[A-Za-z]/) {
	    $dg = join('',uc($c[$i]), uc($c[$i+1]));
	    $digraphs{$dg}++;
	    $total++;
	}
    }
    if (!$first) {
	if ($c[0] =~ /[A-Za-z]/ && $lastchar =~ /[A-Za-z]/) {
	    $dg = join('',uc($c[$0]), uc($lastchar));
	    $digraphs{$dg}++;
	    $total++;
	}
	$first = 0;
    }
    $lastchar = $c[$#c];
}

print "$total digraphs read\n";

for $k (keys %digraphs) {
    print 100*$digraphs{$k}/$total," $k\n";
}





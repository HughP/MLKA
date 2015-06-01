use strict;
use v5.8.1;

use Encode;
use Unicode::Normalize;
use Unicode::Collate;
use File::Spec;

use Getopt::Std;

our $Version = 0.3;	# 2005-10-15
#	Added -f and -r options for JW
#our $Version = 0.2;	# 2004-09-08
#	Added -o, -c, -n, -m, -u options
#	Count CR and LF separately.
#our $Version = 0.1;
#  2004-08-03 Original coding by Bob Hallissy

our ($opt_c, $opt_d, $opt_e, $opt_f, $opt_l, $opt_o, $opt_m, $opt_r, $opt_u);
getopts('cde:flo:mru');


my ($encoding, $file);

if ($opt_e)
{
	$encoding = Encode::resolve_alias($opt_e);
	die "Cannot locate definition for encoding '$opt_e'." unless defined $encoding;
}
else
{
	$encoding = 'utf8';
}

if ($opt_o)
{
	close STDOUT;
	open STDOUT, ">$opt_o" || die ("Can't open '$opt_o' for writing.");
}

if ($opt_l)
{
	print "List of available encodings:\n";
	my $f = (-t STDOUT ? "%-20s" : "%s\n");
	map { printf $f, $_} Encode->encodings(':all');
	exit;
}

die <<"eof" unless $#ARGV >= 0;
Usage:
    UnicodeCCount [-e encoding] [-o outputfile] [-c|-d] [-m] [-u|-f] [-r] file ....
    UnicodeCCount -l

A quick and dirty character counter that understands various encodings.

Input defaults to utf8, but you can choose other encodings with -e.
Data is converted from the specified encoding to Unicode as it is
read, and the output data is always utf-8.

-l outputs a list of available encodings.

-c or -d enforce Unicode normalization (NFC or NFD) as data is read.

-m combining mark sequences (base + diacritics) counted separately.

-u use the Unicode Collation Algorithm (UCA) rather than the default sort.

-f sort by frequency

-r reverse sort order

Version $Version

eof

binmode STDOUT, ':utf8';

my $pattern = ($opt_m ? '\X' : '.');

my $collator;	
if ($opt_u)
{
	# Unicode::Collation module requires an additional file be downloaded.
	# Make sure it is present
	my $path = $INC{'Unicode/Collate.pm'};
	$path =~ s/\.pm$//;
	die <<"EOS" if !(-r File::Spec->catfile($path, 'allkeys.txt'));

ERROR: Your Perl installation is missing the UCA keys file. Please download
http://www.unicode.org/Public/UCA/latest/allkeys.txt and put a copy into
the '$path' folder. 

Or: omit the -u parameter.

(Note: It is normal for a Perl installation to be missing this file.
You are expected to download it if you use Unicode::Collate. See the module
documentation for more information.)

EOS

	$collator = Unicode::Collate->new() if $opt_u;	# No tailoring
}

for $file (@ARGV)
{
	unless (open (IN, "<:raw:encoding($encoding)", $file))
	{
		print "Couldn't open '$file' for reading: $!.\n";
		next;
	}
	
	print "Character count for '$file':\n";	
	my ($char, %charcounts);

	while (my $line = <IN>)
	{
		$line = NFD($line) if $opt_d;
		$line = NFC($line) if $opt_c;
		
		map {$charcounts{$_}++} ($line =~ m/$pattern/ogs);
	}

	for $char (sort {$opt_u ? ($opt_r ? $collator->cmp($b, $a) : $collator->cmp($a, $b)) : $opt_f ? ($opt_r ? $charcounts{$b} <=> $charcounts{$a} : $charcounts{$a} <=> $charcounts{$b} ) : ($opt_r ? $b cmp $a : $a cmp $b)} keys %charcounts)
	{
		print "\tU";
		map {printf "+%04X", ord($_)} split (//, $char);
		printf "\t%s\t%d\n", $char =~ /\p{IsGraph}/ ? $char : ' ', $charcounts{$char};
	}
}
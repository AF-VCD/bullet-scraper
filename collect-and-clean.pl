#! /usr/bin/perl

# run like this on windows:
# perl .\collect-and-clean.pl 

my $WDIR = '.';

my $outfile = "$WDIR/final/bullets.txt";

# > means clobber.
open (FH, '>', $outfile) or die $!;

my @infiles = glob './scrapes/*.txt';

foreach my $infile (@infiles) {
    open(R_FH, '<', $infile) or die $!;
    while(<R_FH>){
        unless (m/^SECTION / || m/^\s*$/){
            # double-dashes at beginning
            s/^--/-/;

            # no dash at beginning
            s/^([^-])/- $1/;

            # no space between dash and first character
            s/^-(\S)/- $1/;

            # any occurrence of two consecutive spaces
            s/\s\s/ /g;

            print FH $_;
        }
    }
    close R_FH;
}
close FH;

#!/usr/bin/env perl

foreach $argnum (0 .. $#ARGV) {
    open FILE, "$ARGV[$argnum]" or die "can't open file!";
    until ( eof(FILE) ) {
        read(FILE, $record, 24) == 24 or die "short read\n";
        my ($r, $c) = unpack('NH40', $record);
        print "$r $c\n";
    }
}

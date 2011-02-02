#!/usr/bin/perl
#
# John Harrison 29/12/2007
#
use warnings;
use strict;

# my @range = ( 9 .. 29, 38 .. 40, 48 .. 89, 108 .. 255 );
my @range = ( 0 .. 8, 30 .. 37, 41 .. 47 , 90 .. 107);
# my @range = ( 38 .. 40 );

my $count = shift;

if ( $count == 1 ) {

    for my $a ( @range ) {
        print "\e[${a}m$a\e[0m\n";
    }

}
elsif ( $count == 2 ) {

    for my $a ( @range ) {
        for my $b ( @range ) {
            print "\e[$a;${b}m$a;$b\e[0m\n";
        }
    }

} else {

    for my $a ( @range ) {
        for my $b ( @range ) {
            for my $c ( @range ) {
                print "\e[$a;$b;${c}m$a;$b;$c\e[0m\n";
            }
        }
    }

}


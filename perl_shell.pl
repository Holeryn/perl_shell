#!/bin/perl
use strict;
use warnings;

&main();

sub main {
    my $input;
    print("Perl shell , exit for terminate the program\n");

    do {
        $input = read_input();
    }until($input eq 'exit');
}

# Read the perl comand and execute them
sub read_input {
    print(">>> ");
    # Read input
    my $input = <STDIN>;
    my $result = eval($input);

    # If the input is a not valid comand
    unless($result){
        print($@);
    }

    return $input
}

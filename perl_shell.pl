#!/bin/perl
use strict;
use warnings;

&main();

sub main {
    # Disable stdout buffering
    $| = 1;

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
    my $input;
    do{
        $input .= getc(STDIN);
    }until($input =~ /.+\n$/); # Check if the input end with \n

    print $input;
    my $result = eval($input);

    # If the input is a not valid comand print the error
    unless($result){
        print($@);
    }

    return $input
}

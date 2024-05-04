#!/bin/perl -w

use strict;
use feature 'say';

sub Valid_Parentheses{
	my $str = shift;
	my @str = split('', $str);
	my %p = (
		'{' => '}',
		'[' => ']',
		'(' => ')'
	);
	my @temp;
	
	foreach (@str){
		if (exists $p{$_}){
			push @temp, $p{$_}
		}
		else{
			if ($_ ne (pop @temp // '0')){return 0}
		}
	}
	return 1
}

say Valid_Parentheses('()'); # 1
say Valid_Parentheses('()[]{}'); # 1
say Valid_Parentheses('(}'); # 0


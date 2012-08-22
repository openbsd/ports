#!/usr/bin/perl
use gv;

my $g = gv::graph("test");

my $n1 = gv::node($g, "a") ;
my $n2 = gv::node($g, "b") ;
my $n3 = gv::node($g, "c") ;

gv::edge($n1, $n2) ;
gv::edge($n2, $n3) ;
gv::edge($n3, $n1) ;

gv::layout($g, 'dot');
gv::render($g, 'xlib' );

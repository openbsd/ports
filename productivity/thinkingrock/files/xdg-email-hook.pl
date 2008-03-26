#!/usr/bin/perl
# $OpenBSD: xdg-email-hook.pl,v 1.1.1.1 2008/03/26 20:18:35 sturm Exp $

use strict;
use warnings;
use URI;

$ARGV[0] =~ /^mailto:/ or die "Usage: $0 <mailtoURI>\n";

my $uri = URI->new($ARGV[0]);
my %headers = $uri->headers;
my $to = $uri->to;

my @cmd = ("xmutt");
push @cmd, '--body', $headers{body} if exists $headers{body};
push @cmd, '-b', $headers{bcc} if exists $headers{bcc};
push @cmd, '-c', $headers{cc} if exists $headers{cc};
push @cmd, '-s', $headers{subject} if exists $headers{subject};

exec @cmd, $to;

# ex:ts=8 sw=4:
# $OpenBSD: Interactive.pm,v 1.1 2015/08/24 10:16:18 espie Exp $
#
# Copyright (c) 2015 Marc Espie <espie@openbsd.org>
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

use strict;
use warnings;

package DPB::Interactive;

sub new
{
	my $class = shift;
	require Term::ReadLine;
	bless {
	    rl => Term::ReadLine->new('dpb'), 
	    prompt => '$ ',
	    want_report => 1}, $class;
}


sub is_interactive
{
	return 1;
}

sub want_report
{
	my $self = shift;

	return $self->{want_report};
}

sub may_ask_for_commands
{
	my $self = shift;
	return 0 if $self->{quitting};
	my $cmd = $self->{rl}->readline($self->{prompt});
	$self->{want_report} = 0;
	if ($cmd =~ m/^(?:port|pkgpath)\s+(\S+)/) {
		$self->{current_port} = $1;
		$self->{prompt} = $self->{current_port}.'$ ';
	} elsif ($cmd =~ m/^quit\b/i) {
		$self->{quitting} = 1;
	} else {
		print STDERR "Unknown command\n";
	}
	return 1;
}

1;

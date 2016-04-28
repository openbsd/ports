# $OpenBSD: Utils.pm,v 1.2 2016/04/28 13:29:04 tsg Exp $
#
# Copyright (c) 2015 Giannis Tsaraias <tsg@openbsd.org>
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

package OpenBSD::PortGen::Utils;

use 5.012;
use warnings;

use DBI;

use parent qw( Exporter );

our @EXPORT_OK = qw(
    add_to_new_ports
    base_dir
    fetch
    module_in_ports
    ports_dir
);

sub _fetch_cmd { $ENV{'FETCH_CMD'} || '/usr/bin/ftp' }

sub fetch
{
	my $url = shift;

	for ( 0 .. 1 ) {
		open my $fh, '-|', _fetch_cmd() . " -o- $url 2> /dev/null" or die $!;
		my $content = do { local $/ = undef; <$fh> };
		return $content if $content;
		sleep 2 * $_;
	}
}

sub ports_dir { $ENV{PORTSDIR} || '/usr/ports' }

sub base_dir { ports_dir() . '/mystuff' }

sub module_in_ports
{
	my ( $module, $prefix ) = @_;

	return unless $module and $prefix;

	my $dbpath = '/usr/local/share';
	my $dbfile;

	if ( -e "$dbpath/sqlports-compact" ) {
		$dbfile = 'sqlports-compact';
	} elsif ( -e "$dbpath/sqlports" ) {
		$dbfile = 'sqlports';
	} else {
		die "install databases/sqlports-compact or databases/sqlports";
	}

	my $dbh = DBI->connect( "dbi:SQLite:dbname=$dbpath/$dbfile", "", "" )
	    or die "failed to connect to database: $DBI::errstr";

	my $stmt;
	$stmt =
	    $dbfile =~ /compact/
	    ? "SELECT FULLPKGPATH FROM Paths WHERE ID IN ( SELECT FULLPKGPATH FROM Ports WHERE DISTNAME LIKE '$module%' )"
	    : "SELECT FULLPKGPATH FROM Ports WHERE DISTNAME LIKE '$module%'";

	my $pr = $dbh->prepare($stmt);
	$pr->execute();

	my @results;
	while ( my @pkgpaths = $pr->fetchrow_array ) {
		push @results, $pkgpaths[0];
	}

	$dbh->disconnect();

	# don't need flavors, should find a cleaner way to do this
	s/,\w+$// for @results;

	# just returning the shortest one that's a module of the same ecosystem
	# this should be improved
	@results = sort { length $a <=> length $b } @results;

	# this works well enough in practice, but can't rely on it
	# see devel/perltidy
	for (@results) {
		return $_ if /\/$prefix/;
	}

	return;
}

# i know, i know...
sub add_to_new_ports
{
	state @new_ports;
	push @new_ports, shift;
	return @new_ports;
}

1;

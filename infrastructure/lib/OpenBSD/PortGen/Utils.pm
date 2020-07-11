# $OpenBSD: Utils.pm,v 1.7 2020/07/11 22:26:01 abieber Exp $
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
use feature qw( state );

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

sub _module_sth
{
	my $dbfile = '/usr/local/share/sqlports';
	die "install databases/sqlports and databases/p5-DBD-SQLite\n"
	    unless -e $dbfile;

	require DBI; # do this here after we've checked for $dbfile

	my $dbh = DBI->connect( "dbi:SQLite:dbname=$dbfile", "", "", {
	    ReadOnly   => 1,
	    RaiseError => 1,
	} ) or die "failed to connect to database: $DBI::errstr";

	return $dbh->prepare(q{
	    SELECT _Paths.FullPkgPath FROM _Paths
	      JOIN _Ports ON _Paths.PkgPath = _Ports.FullPkgPath
	     WHERE PKGSTEM = ?
	       AND _Paths.Id = _Paths.PkgPath
	     ORDER BY LENGTH(_Paths.FullPkgPath)
	});
}

sub module_in_ports
{
	my ( $module, $prefix ) = @_;
	return unless $module and defined $prefix;

	state $sth = _module_sth();
	END { undef $sth }; # Bus error if destroyed during global destruction

	my @stems = ( $prefix . $module );

	# We commonly convert the port to lowercase
	push @stems, $prefix . lc($module) if $module =~ /\p{Upper}/;

	foreach my $stem (@stems) {
		$sth->execute($stem);
		my ($path, @extra) = map {@$_} @{ $sth->fetchall_arrayref };
		warn "Found paths other than $path: @extra\n"
		    if @extra;
		return $path if $path;
	}

	# Many ports, in particular python ports, start with $prefix,
	# possibly without the "-".  To catch that, we check if
	# e.g. pytest got imported as py-test instead of py-pytest
	( my $start = $prefix ) =~ s/-$//;

	return unless $start;

	if ( $module =~ /^$start-?(.*)$/ ) {
		return module_in_ports( $1, $prefix );
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

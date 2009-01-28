# $OpenBSD: Custom.pm,v 1.1 2009/01/28 01:36:00 sthen Exp $

package Slim::Utils::OS::Custom;

use strict;
use Config;
use File::Spec::Functions qw(:ALL);
use FindBin qw($Bin);

use base qw(Slim::Utils::OS::Unix);

sub initDetails {
	my $class = shift;

	$class->{osDetails}->{'os'}     = 'OpenBSD';
	$class->{osDetails}->{'osName'} = 'OpenBSD';
	$class->{osDetails}->{'uid'}    = getpwuid($>);
	$class->{osDetails}->{'osArch'} = `arch -s`;
	$class->{osDetails}->{isOpenBSD}= 1 ;

	return $class->{osDetails};
}

sub name {
        return 'OpenBSD';
}

sub initSearchPath {
	my $class = shift;

	$class->SUPER::initSearchPath();

	my @paths = (split(/:/, $ENV{'PATH'}), qw(/usr/bin ${LOCALBASE}/bin /usr/libexec ${LOCALBASE}/libexec /usr/sbin));

	Slim::Utils::Misc::addFindBinPaths(@paths);
}

sub dirsFor {
	my ($class, $dir) = @_;

	my @dirs = ();

	if ($dir eq 'oldprefs') {

		push @dirs, $class->SUPER::dirsFor($dir);

	} elsif ($dir =~ /^(?:Firmware|Graphics|HTML|IR|MySQL|SQL)$/) {

		push @dirs, "${LOCALBASE}/share/squeezecenter/$dir";

	} elsif ($dir eq 'Plugins') {

		push @dirs, $class->SUPER::dirsFor($dir);
		push @dirs, "${LOCALBASE}/share/squeezecenter/Plugins";
		push @dirs, "${LOCALBASE}/libdata/perl5/site_perl/Slim/Plugin";

	} elsif ($dir =~ /^(?:lib|Bin)$/) {

		push @dirs, "${LOCALBASE}/libdata/squeezecenter";

	} elsif ($dir =~ /^(?:strings|revision)$/) {

		push @dirs, "${LOCALBASE}/share/squeezecenter";

	} elsif ($dir eq 'libpath') {

		push @dirs, "${LOCALBASE}/libdata/squeezecenter";

	# Because we use the system MySQL, we need to point to the right
	# directory for the errmsg. files. Default to english.
	} elsif ($dir eq 'mysql-language') {

		push @dirs, "${LOCALBASE}/share/mysql/english";

	} elsif ($dir =~ /^(?:types|convert)$/) {

		push @dirs, "/etc/squeezecenter";

	} elsif ($dir eq 'prefs') {

		push @dirs, $::prefsdir || "/var/db/squeezecenter/prefs";

	} elsif ($dir eq 'log') {

		push @dirs, $::logdir || "/var/log/squeezecenter";

	} elsif ($dir eq 'cache') {

		push @dirs, $::cachedir || "/var/db/squeezecenter/cache";

	} elsif ($dir =~ /^(?:music|playlists)$/) {

		push @dirs, '';

	} else {

		warn "dirsFor: Didn't find a match request: [$dir]\n";
	}

	return wantarray() ? @dirs : $dirs[0];
}

sub scanner {
        return '${LOCALBASE}/bin/scanner.pl';
}

1;

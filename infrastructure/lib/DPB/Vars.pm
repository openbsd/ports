# ex:ts=8 sw=4:
# $OpenBSD: Vars.pm,v 1.8 2010/11/02 20:32:59 espie Exp $
#
# Copyright (c) 2010 Marc Espie <espie@openbsd.org>
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

package DPB::GetThings;
sub subdirlist
{
	my ($class, $list) = @_;
	return join(' ', sort @$list);
}

sub run_command
{
	my ($class, $core, $shell, $grabber, $subdirs, @args) = @_;

	my $ports = $grabber->ports;

	if (defined $shell) {
		my $s='';
		if (defined $subdirs) {
			$s="SUBDIR='".$class->subdirlist($subdirs)."'";
		}
		$shell->run("cd $ports && $s ".
		    join(' ', $shell->make, @args));
	} else {
		if (defined $subdirs) {
			$ENV{SUBDIR} = $class->subdirlist($subdirs);
		}
		chdir($ports) or die "Bad directory $ports";
		exec {$grabber->make} ('make', @args);
	}
	exit(1);
}

package DPB::Vars;

our @ISA = qw(DPB::GetThings);

use OpenBSD::Paths;
sub get
{
	my ($class, $make, @names) = @_;
	pipe(my $rh, my $wh);
	my $pid = fork();
	if ($pid == 0) {
		print $wh "all:\n";
		for my $_ (@names) {
			print $wh "\t\@echo \${$_}\n";
		}
		print $wh <<EOT;
COMMENT = test
CATEGORIES = test
PKGPATH = test/a
PERMIT_PACKAGE_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
WRKOBJDIR=
IGNORE=Yes
ECHO_MSG=:
.include <bsd.port.mk>
EOT
		close $wh;
		exit 0;
	}
	close $wh;
	my @list;
	my $pid2 = open(my $output, "-|");
	if ($pid2) {
		close $rh;
		@list = <$output>;
		chomp for @list;
		waitpid($pid2, 0);
		waitpid($pid, 0);
	} else {
		close STDIN;
		open(STDIN, '<&', $rh);
		exec {$make} ('make', '-f', '-');
		die "oops";
    	}
	return @list;
}

sub run_pipe
{
	my ($class, $core, $grabber, $subdirs, $dpb) = @_;
	$core->start_pipe(sub {
		my $shell = shift;
		close STDERR;
		open STDERR, '>&STDOUT' or die "bad redirect";
		$class->run_command($core, $shell, $grabber, $subdirs,
		    'dump-vars', "DPB=$dpb", "BATCH=Yes", "REPORT_PROBLEM=:");
	}, "LISTING");
}

sub grab_list
{
	my ($class, $core, $grabber, $subdirs, $log, $dpb, $code) = @_;
	$class->run_pipe($core, $grabber, $subdirs, $dpb);
	my $h = {};
	my $fh = $core->fh;
	my $subdir;
	my $reset = sub {
			for my $v (values %$h) {
				$v->handle_default($h);
			}
			DPB::PkgPath->merge_depends($h);
			&$code($h);
			$h = {};
		    };

	my @current = ();
	while(<$fh>) {
		push(@current, $_);
		chomp;
		if (m/^\=\=\=\>\s*Exiting (.*) with an error$/) {
			my $dir = DPB::PkgPath->new_hidden($1);
			$dir->{broken} = 1;
			$h->{$dir} = $dir;
			open my $quicklog,  '>>', 
			    $grabber->logger->log_pkgpath($dir);
			print $quicklog @current;
		}
		if (m/^\=\=\=\>\s*(.*)/) {
			@current = ("$_\n");
			print $log $_, "\n";
			$core->job->set_status(" at $1");
			$subdir = DPB::PkgPath->new_hidden($1);
			&$reset;
		} elsif (my ($pkgpath, $var, $value) =
		    m/^(.*?)\.([A-Z][A-Z_0-9]*)\=(.*)$/) {
			next unless DPB::PortInfo->wanted($var);

			if ($value =~ m/^\"(.*)\"$/) {
				$value = $1;
			}
			my $o = DPB::PkgPath->compose($pkgpath, $subdir);
			my $info = DPB::PortInfo->new($o);
			$h->{$o} = $o;
			eval { $info->add($var, $value); };
			if ($@) {
				print $log $@;
				$o->{broken} = 1;
			}
		}
	}
	&$reset;
	$core->terminate;
}

package DPB::PortSignature;
our @ISA = qw(DPB::GetThings);

sub grab_signature
{
	my ($class, $core, $grabber, $subdir) = @_;
	my $signature;
	$core->start_pipe(sub {
		my $shell = shift;
		$class->run_command($core, $shell, $grabber, [$subdir],
			'print-package-signature', 'ECHO_MSG=:')
	}, "PORT-SIGNATURE");
	my $fh = $core->fh;
	while (<$fh>) {
		chomp;
		$signature = $_;
	}
	$core->terminate;
	return $signature;
}

package DPB::CleanPackages;
our @ISA = qw(DPB::GetThings);
sub clean
{
	my ($class, $core, $grabber, $subdir) = @_;
	$core->start_pipe(sub {
		my $shell = shift;
		$class->run_command($core, $shell, $grabber, [$subdir],
			'clean=packages')
	}, "CLEAN-PACKAGES");
	my $fh = $core->fh;
	while (<$fh>) {
	}
	$core->terminate;
}

1;

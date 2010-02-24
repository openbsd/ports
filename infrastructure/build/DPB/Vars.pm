# ex:ts=8 sw=4:
# $OpenBSD: Vars.pm,v 1.1 2010/02/24 11:33:31 espie Exp $
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

package DPB::Vars;

use OpenBSD::Paths;
my @errors = ();
my $last_errors = 0;

sub report
{
	return join('', @errors);
}

sub important
{
	my $class = shift;
	if (@errors > $last_errors) {
		$last_errors = @errors;
		return $class->report;
	}
}

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

sub grab_list
{
	my ($class, $core, $ports, $make, $subdirs, $log, $dpb, $code) = @_;
	$core->start_pipe(sub {
		my $shell = shift;
		my @args = ('dump-vars', "DPB=$dpb", "BATCH=Yes", "REPORT_PROBLEM=:");
		if (defined $shell) {
			my $s='';
			if (defined $subdirs) {
				$s="SUBDIR='".join(' ', sort @$subdirs)."'";
			}
			$shell->run("cd $ports && $s ".
			    join(' ', $shell->make, @args));
		} else {
			if (defined $subdirs) {
				$ENV{SUBDIR} = join(' ', sort @$subdirs);
			} 
			chdir($ports) or die "Bad directory $ports";
			exec {$make} ('make', @args);
		}
		exit(1);
	}, "LISTING");
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

	while(<$fh>) {
		chomp;
		if (m/^\=\=\=\>\s*Exiting (.*) with an error$/) {
			push(@errors, "Problem in $1\n");
		}
		if (m/^\=\=\=\>\s*(.*)/) {
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
			my $info = DPB::PortInfo->new($o, $subdir);
			$h->{$o} = $o;
			$info->add($var, $value);
		}
	}
	&$reset;
	$core->terminate;
}

1;

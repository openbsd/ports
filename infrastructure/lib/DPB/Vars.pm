# ex:ts=8 sw=4:
# $OpenBSD: Vars.pm,v 1.49 2016/05/17 14:50:36 espie Exp $
#
# Copyright (c) 2010-2013 Marc Espie <espie@openbsd.org>
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
use DPB::Util;

package DPB::GetThings;
sub subdirlist
{
	my ($class, $list) = @_;
	return join(' ', sort keys %$list);
}

sub run_command
{
	my ($class, $core, $shell, $grabber, $subdirs, $skip, @args) = @_;

	if (defined $subdirs) {
		$shell->env(SUBDIR => $class->subdirlist($subdirs));
	}
	if (defined $skip) {
		$shell->env(SKIPDIR => $class->subdirlist($skip));
	}
	$shell->exec($grabber->make_args, @args);
	exit(1);
}

package DPB::Vars;

our @ISA = qw(DPB::GetThings);

use OpenBSD::Paths;
sub get
{
	my ($class, $shell, $make, @names) = @_;
	pipe(my $rh, my $wh);
	my $pid = fork();
	if ($pid == 0) {
		$DB::inhibit_exit = 0;
		print $wh "print-data:\n";
		for my $n (@names) {
			print $wh "\t\@echo \${$n}\n";
		}
		print $wh <<EOT;
COMMENT = test
CATEGORIES = test
PKGPATH = test/a
PERMIT_PACKAGE_CDROM=Yes
IGNORE=Yes
_MAKEFILE_INC_DONE=Yes
ECHO_MSG=:
.PHONY: print-data
.include <bsd.port.mk>
SIGNING_PARAMETERS ?=
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
		$shell->exec($make, '-C', '/', '-f', '-', 'print-data');
		DPB::Util->die("oops couldn't exec $make");
    	}
	return @list;
}

sub run_pipe
{
	my ($class, $core, $grabber, $subdirs, $skip, $dpb) = @_;
	$core->start_pipe(sub {
		my $shell = shift;
		close STDERR;
		open STDERR, '>&', STDOUT or DPB::Util->die_bang("bad redirect");
		$class->run_command($core, $shell, $grabber, $subdirs, $skip,
		    'dump-vars', "DPB=$dpb", "BATCH=Yes", "REPORT_PROBLEM=:");
	}, "LISTING");
}

sub grab_list
{
	my ($class, $core, $grabber, $subdirs, $skip, $ignore_errors, 
	    $log, $dpb, $code) = @_;
	$class->run_pipe($core, $grabber, $subdirs, $skip, $dpb);
	my $h = {};
	my $seen = {};
	my $fh = $core->fh;
	my $subdir;
	my $category;
	my $reset = sub {
	    $h = DPB::PkgPath->handle_equivalences($grabber->{state}, 
	    	$h, $subdirs);
	    $grabber->{fetch}->build_distinfo($h, $grabber->{state}{mirror});
	    DPB::PkgPath->merge_depends($h);
	    &$code($h);
	    $h = {};
	};

	my @current = ();
	my ($o, $info);
	my $previous = '';
	while(<$fh>) {
		push(@current, $_);
		chomp;
		if (m/^\=\=\=\> .* skipped$/) {
			print $log $_, "\n";
			next;
		}
		if (m/^\=\=\=\>\s*Exiting (.*) with an error$/) {
			undef $category;
			next if $ignore_errors;
			my $dir = DPB::PkgPath->new($1);
			if (defined $skip) {
				$dir->add_to_subdirlist($skip);
			}
			$dir->break("exiting with an error");
			$h->{$dir} = $dir;
			my $quicklog = $grabber->logger->append(
			    $grabber->logger->log_pkgpath($dir));
			print $quicklog @current;
			&$reset;
			next;
		}
		if (m/^\=\=\=\>\s*(.*)/) {
			@current = ("$_\n");
			$core->job->set_status(" at $1");
			$subdir = DPB::PkgPath->new($1);
			if (defined $skip) {
				$subdir->add_to_subdirlist($skip);
			}
			print $log $_;
			if (defined $subdir->{parent}) {
				print $log " (", $subdir->{parent}->fullpkgpath, ")";
			}
			print $log "\n";
			if (defined $category) {
				$category->{category} = 1;
			}
			$category = $subdir;
			$previous = '';
			&$reset;
		} elsif (my ($pkgpath, $var, $value) =
		    m/^(.*?)\.([A-Z][A-Z_0-9]*)\=\s*(.*)\s*$/) {
			undef $category;
			next unless DPB::PortInfo->wanted($var);

			if ($value =~ m/^\"(.*)\"$/) {
				$value = $1;
			}
			if ($pkgpath ne $previous) {
				$o = DPB::PkgPath->compose($pkgpath, $subdir);
				$info = $seen->{$o} = DPB::PortInfo->new($o);
				$h->{$o} = $o;
				$previous = $pkgpath;
			}
			eval { $info->add($var, $value, $o); };
			if ($@) {
				print $log $@;
				$o->break("error with adding $var=$value");
			}
		} elsif (m/^\>\>\s*Broken dependency:\s*(.*?)\s*non existent/) {
			next if $ignore_errors;
			my $dir = DPB::PkgPath->new($1);
			$dir->break("broken dependency");
			$h->{$dir} = $dir;
			if (defined $skip) {
				$dir->add_to_subdirlist($skip);
			}
			print $log $_, "\n";
			print $log "Broken ", $dir->fullpkgpath, "\n";
			&$reset;
		} else {
			print $log $_, "\n";
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
		$class->run_command($core, $shell, $grabber, {$subdir => 1},
			undef, 'print-package-signature', 'ECHO_MSG=:')
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
		$class->run_command($core, $shell, $grabber, {$subdir => 1},
			undef, 'clean=package')
	}, "CLEAN-PACKAGES");
	my $fh = $core->fh;
	while (<$fh>) {
	}
	$core->terminate;
}

1;

# ex:ts=8 sw=4:
# $OpenBSD: Config.pm,v 1.47 2015/05/12 08:08:04 espie Exp $
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

# all the code responsible for handling command line options and the
# config file.

package DPB::Config;
use DPB::User;

sub setup_users
{
	my ($class, $state) = @_;
	for my $u (qw(unpriv_user build_user log_user fetch_user)) {
		my $U = uc($u);
		if ($state->defines($U)) {
			$state->{$u} = DPB::User->new($state->defines($U));
		}
		if (defined $state->{$u}) {
			if ($state->defines("DIRMODE")) {
				$state->{$u}{dirmode} = 
				    oct($state->defines("DIRMODE"));
			}
			if ($state->defines("DROPPRIV")) {
				$state->{$u}{droppriv} = 
				    $state->defines("DROPPRIV");
			}
		}
	}
	if (defined $state->{unpriv_user}) {
		$> = $state->{unpriv_user}{uid};
		$) = $state->{unpriv_user}{gid};
	}
}

sub parse_command_line
{
	my ($class, $state) = @_;
	$state->{dontclean} = {};
	$state->{opt} = {
		A => sub {
			$state->{arch} = shift;
		},
		L => sub {
			$state->{flogdir} = shift;
		},
		l => sub {
			$state->{flockdir} = shift;
		},
		r => sub {
			$state->{random} = 1;
			$state->heuristics->random;
		},
		P => sub {
			push(@{$state->{paths}}, shift);
		},
		I => sub {
			push(@{$state->{ipaths}}, shift);
		},
		C => sub {
			push(@{$state->{cpaths}}, shift);
		},
		X => sub {
			push(@{$state->{xpaths}}, shift);
		},
		b => sub {
			push(@{$state->{build_files}}, shift);
		},
		h => sub {
			push(@{$state->{config_files}}, shift);
		},
	};

	$state->SUPER_handle_options('acemqrRstuUvh:S:xX:A:B:C:f:F:I:j:J:M:p:P:b:l:L:',
    "[-acemqrRsuUvx] [-A arch] [-B chroot] [-C plist] [-f m] [-F m]",
    "[-I pathlist] [-J p] [-j n] [-p parallel] [-P pathlist] [-h hosts]",
    "[-L logdir] [-l lockdir] [-b log] [-M threshold] [-X pathlist]",
    "[pathlist ...]");
	for my $l (qw(j f F)) {
		my $o = $state->{opt}{$l};
		if (defined $o && $o !~ m/^\d+$/) {
			$state->usage("-$l takes an integer argument, not $o");
		}
	}
    	$state->{chroot} = $state->opt('B');
	$state->{base_user} = DPB::User->from_uid($<);
	if (!defined $state->{base_user}) {
		$state->usage("Can't figure out who I am");
	}
	$class->setup_users($state);

	($state->{ports}, $state->{localarch},
	    $state->{distdir}, $state->{xenocara}) =
		DPB::Vars->get(DPB::Host::Localhost->getshell($state), 
		$state->make,
		"PORTSDIR", "MACHINE_ARCH", "DISTDIR", 
		"PORTS_BUILD_XENOCARA_TOO");
    	if (!defined $state->{ports}) {
		$state->usage("Can't obtain vital information from the ports tree");
	}
	if ($state->{xenocara} =~ m/Yes/i) {
		$state->{xenocara} = 1;
	} else {
		$state->{xenocara} = 0;
	}
	$state->{arch} //= $state->{localarch};
	if (defined $state->{opt}{F}) {
		if (defined $state->{opt}{j} || defined $state->{opt}{f}) {
			$state->usage("Can't use -F with -f or -j");
		}
		$state->{fetch_only} = 1;
		$state->{opt}{f} = $state->{opt}{F};
	}
	if (defined $state->opt('j')) {
		if ($state->localarch ne $state->arch) {
			$state->usage(
		    "Can't use -j if -A arch is not local architecture");
		}
	}
	$state->{realports} = $state->anchor($state->{ports});
	$state->{realdistdir} = $state->anchor($state->{distdir});
	if (defined $state->{config_files}) {
		for my $f (@{$state->{config_files}}) {
			$f = $state->expand_path($f);
		}
	}

	# keep cmdline subst values
	my %cmdline = %{$state->{subst}};

	$class->parse_config_files($state);
	# ... as those must override the config files contents
	while (my ($k, $v) = each %cmdline) {
		$state->{subst}->{$k} = $v;
	}
	$state->{build_user} //= $state->{default_prop}{build_user};
	$class->setup_users($state);
	$state->{build_user} //= $state->{base_user};
	$state->{log_user} //= $state->{build_user};
	$state->{fetch_user} //= $state->{build_user};


	$state->{chroot} = $state->{default_prop}{chroot};
	# reparse things properly now that we can chroot
	my $p;
	($state->{ports}, $state->{portspath}, $state->{repo}, $state->{localarch},
	    $state->{distdir}, $state->{localbase}, $state->{xenocara}, $p) =
		DPB::Vars->get(DPB::Host::Localhost->getshell($state), 
		$state->make,
		"PORTSDIR", "PORTSDIR_PATH", "PACKAGE_REPOSITORY", 
		"MACHINE_ARCH", "DISTDIR", "LOCALBASE", 
		"PORTS_BUILD_XENOCARA_TOO", "SIGNING_PARAMETERS");

    	if (!defined $state->{portspath}) {
		$state->usage("Can't obtain vital information from the ports tree");
	}
	$state->{portspath} = [ map {$state->anchor($_)} split(/:/, $state->{portspath}) ];
	$state->{realdistdir} = $state->anchor($state->{distdir});
	$state->{logdir} = $state->{flogdir} // $ENV{LOGDIR} // '%p/logs/%a';
	$state->{lockdir} //= $state->{flockdir} // "%L/locks";
	$state->{logdir} = $state->expand_path($state->{logdir});

	if ($p =~ m/^\s*$/) {
		$state->{signer} = '-Dunsigned';
	} elsif ($p =~ m/\-DSIGNER\=\S+/) {
		$state->{signer} = $&;
	}

	$state->{size_log} = "%f/build-stats/%a-size";

	if ($state->define_present("STARTUP")) {
		$state->{startup_script} = $state->{subst}->value("STARTUP");
	} elsif ($state->define_present("CLEANUP")) {
		$state->{startup_script} = $state->{subst}->value("CLEANUP");
	}
	if ($state->define_present('LOGDIR')) {
		$state->{logdir} = $state->subst->value('LOGDIR');
	}
	if ($state->{opt}{s}) {
		$state->{wantsize} = 1;
	} elsif ($state->define_present('WANTSIZE')) {
		$state->{wantsize} = $state->{subst}->value('WANTSIZE');
	} elsif (DPB::HostProperties->has_mem) {
		$state->{wantsize} = 1;
	}
	if ($state->define_present('COLOR')) {
		$state->{color} = $state->{subst}->value('COLOR');
	}
	if ($state->define_present('NO_CURSOR')) {
		$state->{nocursor} = $state->{subst}->value('NO_CURSOR');
	}
	if (DPB::HostProperties->has_mem || $state->{wantsize}) {
		require DPB::Heuristics::Size;
		$state->{sizer} = DPB::Heuristics::Size->new($state);
	} else {
		require DPB::Heuristics::Nosize;
		$state->{sizer} = DPB::Heuristics::Nosize->new($state);
	}
	if ($state->define_present('FETCH_JOBS') && !defined $state->{opt}{f}) {
		$state->{opt}{f} = $state->{subst}->value('FETCH_JOBS');
	}
	if ($state->define_present('LOCKDIR')) {
		$state->{lockdir} = $state->{subst}->value('LOCKDIR');
	}
	if ($state->define_present('TESTS')) {
		$state->{tests} = $state->{subst}->value('tests');
	}
	if ($state->{flogdir}) {
		$state->{logdir} = $state->{flogdir};
	}
	if ($state->{flockdir}) {
		$state->{lockdir} = $state->{flockdir};
	}
	if ($state->{opt}{t}) {
		$state->{tests} = 1;
	}

	$state->{opt}{f} //= 2;
	if ($state->opt('f')) {
		$state->{want_fetchinfo} = 1;
	}

	# redo this in case config files changed it
	$state->{logdir} = $state->expand_path($state->{logdir});

	if ($state->define_present("RECORD")) {
		$state->{record} = $state->{subst}->value("RECORD");
	}
	$state->{record} //= "%L/term-report.log";
	$state->{record} = $state->expand_path($state->{record});
	$state->{size_log} = $state->expand_path($state->{size_log});
	$state->{lockdir} = $state->expand_path($state->{lockdir});
	if (!$state->{subst}->value("NO_BUILD_STATS")) {
		push @{$state->{build_files}}, "%f/build-stats/%a";
	}
	for my $cat (qw(build_files paths ipaths cpaths xpaths)) {
		next unless defined $state->{$cat};
		for my $f (@{$state->{$cat}}) {
			$f = $state->expand_path($f);
		}
	}
	$state->{permanent_log} = $state->{build_files}[-1];
	$state->{display_timeout} =
	    $state->{subst}->value('DISPLAY_TIMEOUT') // 10;
	if ($state->defines("DONT_BUILD_ONCE")) {
		$state->{build_once} = 0;
	}
	if ($state->define_present('MIRROR')) {
		$state->{mirror} = $state->{subst}->value('MIRROR');
	} else {
		$state->{mirror} = $state->{fetch_only};
	}
    	$state->{fullrepo} = join("/", $state->{repo}, $state->arch, "all");
}

sub command_line_overrides
{
	my ($class, $state) = @_;

	my $override_prop = DPB::HostProperties->new;

	if (defined $state->{base_user}) {
		$override_prop->{base_user} = $state->{base_user};
	}
	if (!$state->{subst}->empty('HISTORY_ONLY')) {
		$state->{want_fetchinfo} = 1;
		$state->{opt}{f} = 0;
		$state->{opt}{j} = 1;
		$state->{opt}{e} = 1;
		$state->{all} = 1;
		$state->{scan_only} = 1;
		# XXX not really random, but no need to use dependencies
		$state->{random} = 1;
	}
	if ($state->opt('j')) {
		$override_prop->{jobs} = $state->opt('j');
	}
	if ($state->opt('p')) {
		$override_prop->{parallel} = $state->opt('p');
	}
	if ($state->opt('B')) {
		$override_prop->{chroot} = $state->opt('B');
	}
	if ($state->define_present('STUCK_TIMEOUT')) {
		$override_prop->{stuck} = 
		    $state->{subst}->value('STUCK_TIMEOUT');
	}
	if ($state->define_present('FETCH_TIMEOUT')) {
		$override_prop->{fetch_timeout} = 
		    $state->{subst}->value('FETCH_TIMEOUT');
	}
	if ($state->define_present('SMALL_TIME')) {
		$override_prop->{small} = 
		    $state->{subst}->value('SMALL_TIME');
	}
	if ($state->define_present('CONNECTION_TIMEOUT')) {
		$override_prop->{timeout} = 
		    $state->{subst}->value('CONNECTION_TIMEOUT');
	}
	if ($state->opt('J')) {
		$override_prop->{junk} = $state->opt('J');
	}
	if ($state->defines("ALWAYS_CLEAN")) {
		$override_prop->{always_clean} = 1;
	}
	if ($state->opt('M')) {
		$override_prop->{mem} = $state->opt('M');
	}

	if ($state->define_present('SYSLOG')) {
		require Sys::Syslog;
		Sys::Syslog::openlog('dpb', "nofatal");
		$override_prop->{syslog} = 1;
	}
	return $override_prop;
}

sub parse_config_files
{
	my ($class, $state) = @_;

	my $override_prop = $class->command_line_overrides($state);
	my $default_prop = {
		junk => 150, 
		parallel => '/2',
		small => 120,
		repair => 1,
		nochecksum => 1,
	};

	if ($state->{config_files}) {
		for my $config (@{$state->{config_files}}) {
			$class->parse_hosts_file($config, $state, 
			    \$default_prop, $override_prop);
		}
	}
	my $prop = DPB::HostProperties->new($default_prop);
	$prop->finalize_with_overrides($override_prop);
	if (!$state->{config_files}) {
		DPB::Core::Init->new('localhost', $prop);
	}
	$state->{default_prop} = $prop;
}

sub parse_hosts_file
{
	my ($class, $filename, $state, $rdefault, $override) = @_;
	open my $fh, '<', $filename or
		$state->fatal("Can't read host files #1: #2", $filename, $!);
	my $cores = {};
	while (<$fh>) {
		chomp;
		s/\s*\#.*$//;
		next if m/^$/;
		if (m/^([A-Z_]+)\=\s*(.*)\s*$/) {
			$state->{subst}->add($1, $2);
			next;
		}
		if (defined $state->{build_user}) {
			$$rdefault->{build_user} //= $state->{build_user}->user;
		}
		# copy default properties
		my $prop = DPB::HostProperties->new($$rdefault);
		my ($host, @properties) = split(/\s+/, $_);
		for my $arg (@properties) {
			if ($arg =~ m/^(.*?)=(.*)$/) {
				$prop->{$1} = $2;
			}
		}
		if (defined $prop->{arch} && $prop->{arch} ne $state->arch) {
			next;
		}
		if ($host eq 'DEFAULT') {
			$$rdefault = { %$prop };
			next;
		}
		$prop->finalize_with_overrides($override);
		DPB::Core::Init->new($host, $prop);
	}
}

1;

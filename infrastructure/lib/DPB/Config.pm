# ex:ts=8 sw=4:
# $OpenBSD: Config.pm,v 1.88 2020/03/31 11:12:15 espie Exp $
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
use DPB::PortInfo;

sub setup_users
{
	my ($class, $state) = @_;
	for my $u (qw(build_user log_user fetch_user port_user)) {
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
	my $u = DPB::User->new('_dpb');
	if (defined $u->{uid}) {
		$state->{unpriv_user} = $u;
	} else {
		$state->fatal("No _dpb user");
	}
	$state->{unpriv_user}->enforce_local;
	$> = $state->{unpriv_user}{uid};
	$) = $state->{unpriv_user}{grouplist};
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

	$state->SUPER_handle_options('acemNqrRstuUvh:S:xX:A:B:C:f:F:I:j:J:M:p:P:b:l:L:',
    "[-acemNqrRsuUvx] [-A arch] [-B chroot] [-C plist] [-f m] [-F m]",
    "[-I pathlist] [-J p] [-j n] [-p parallel] [-P pathlist] [-h hosts]",
    "[-L logdir] [-l lockdir] [-b log] [-M threshold] [-X pathlist]",
    "[pathlist ...]");
	for my $l (qw(j f F)) {
		my $o = $state->{opt}{$l};
		if (defined $o && $o !~ m/^\d+$/) {
			$state->usage("-$l takes an integer argument, not $o");
		}
	}

	$state->{roach} = $state->opt('N'); 	# for "new"
    	$state->{chroot} = $state->opt('B');
	$state->{base_user} = DPB::User->from_uid($<);
	if (!defined $state->{base_user}) {
		$state->usage("Can't figure out who I am");
	}
	if ($state->{base_user}{uid} == 0) {
		$state->{noportsprivsep} = 1;
	} else {
		$state->errsay("Warning: dpb started as #1", 
		    $state->{base_user}->user);
		$state->errsay("Warning: running dpb as root with a build_user is the preferred setup");
	}
	$class->setup_users($state);

	($state->{ports}, $state->{localarch},
	    $state->{distdir}) =
		DPB::Vars->get(DPB::Host::Localhost->getshell($state), 
		$state, "PORTSDIR", "MACHINE_ARCH", "DISTDIR");
    	if (!defined $state->{ports}) {
		$state->usage("Can't obtain vital information from the ports tree");
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
	$class->setup_users($state);
	$state->{build_user} //= $state->{default_prop}{build_user};
	if ($state->{base_user}{uid} == 0) {
		$state->{fetch_user} //= DPB::User->new('_pfetch');
	}
	if (!defined $state->{port_user}) {
		my ($uid, $gid) = (stat $state->{realports})[4,5];
		$state->{port_user} = DPB::User->from_uid($uid, $gid);
	}
	if (!defined $state->{build_user}) {
		$state->{build_user} = $state->{base_user};
	}
	$state->{log_user} //= $state->{build_user};
	$state->{fetch_user} //= $state->{build_user};

	$state->{log_user}->enforce_local;
	$state->{chroot} = $state->{default_prop}{chroot};
	# reparse things properly now that we can chroot
	my $backup;
	($state->{ports}, $state->{portspath}, $state->{repo}, $state->{localarch},
	    $state->{distdir}, $state->{localbase}, $backup) =
		DPB::Vars->get(DPB::Host::Localhost->getshell($state), 
		$state,
		"PORTSDIR", "PORTSDIR_PATH", "PACKAGE_REPOSITORY", 
		"MACHINE_ARCH", "DISTDIR", "LOCALBASE", "MASTER_SITE_BACKUP");

    	if (!defined $state->{portspath}) {
		$state->usage("Can't obtain vital information from the ports tree");
	}
	$state->{backup_sites} = [AddList->make_list($backup)];

	$state->{portspath} = [ map {$state->anchor($_)} split(/:/, $state->{portspath}) ];
	$state->{realports} = $state->anchor($state->{ports});
	$state->{realdistdir} = $state->anchor($state->{distdir});
	if (!defined $state->{port_user}) {
		my ($uid, $gid) = (stat $state->{realports})[4,5];
		$state->{port_user} = DPB::User->from_uid($uid, $gid);
	}
	$state->say("Started as: #1", $state->{base_user}->user);
	$state->say("Port user: #1", $state->{port_user}->user);
	$state->say("Build user: #1", $state->{build_user}->user);
	$state->say("Fetch user: #1", $state->{fetch_user}->user);
	$state->say("Log user: #1", $state->{log_user}->user);
	$state->say("Unpriv user#1: #2", 
	    $state->{base_user}{uid} == 0 ? "" : "(unused)",
	    $state->{unpriv_user}->user);

	$state->{logdir} = $state->{flogdir} // $ENV{LOGDIR} // '%p/logs/%a';
	$state->{lockdir} //= $state->{flockdir} // "%L/locks";
	$state->{logdir} = $state->expand_path($state->{logdir});

	$state->{size_log} = "%f/build-stats/%a-size";

	if ($state->define_present('LOGDIR')) {
		$state->{logdir} = $state->{subst}->value('LOGDIR');
	}
	if ($state->define_present('CONTROL')) {
		if ($state->{subst}->value('CONTROL') ne '') {
			require DPB::External;
			$state->{external} = DPB::External->server($state);
			die if !defined $state->{external};
		}
	} else {
		require DPB::External;
		$state->{subst}->add('CONTROL', '%L/control-%h-%$');
		$state->{external} = DPB::External->server($state);
	}
	$state->{external} //= DPB::ExternalStub->new;
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
	if ($state->define_present('LISTING_EXTRA') && 
	    !defined $state->{opt}{e}) {
		$state->{opt}{e} = $state->{subst}->value('LISTING_EXTRA');
	}
	if ($state->define_present('ROACH') && 
	    !defined $state->{opt}{N}) {
	    	$state->{roach} = $state->{subst}->value('ROACH');
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

	my $k = "STARTUP";
	if ($state->define_present($k)) {
		$state->{startup_script} = $state->expand_chrooted_path($state->{subst}->value($k));
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
	for my $cat (qw(build_files paths ipaths cpaths xpaths)) {
		next unless defined $state->{$cat};
		for my $f (@{$state->{$cat}}) {
			$f = $state->expand_path($f);
		}
	}
	if (!$state->{subst}->value("NO_BUILD_STATS")) {
		$state->{permanent_log} = 
		    $state->expand_path("%f/build-stats/%a");
		push(@{$state->{build_files}}, $state->{permanent_log});
	}
	$state->{dependencies_log} = 
	    $state->expand_path("%f/build-stats/%a-dependencies");
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
	if (defined $state->{port_user}) {
		$override_prop->{port_user} = $state->{port_user};
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
		master_pid => $state->{master_pid},
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
		DPB::Core::Init->new(DPB::Host->new('localhost', $prop));
	}
	$state->{default_prop} = $prop;
	$state->{override_prop} = $override_prop;
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
			$$rdefault->{build_user} //= $state->{build_user};
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
		DPB::Core::Init->new(DPB::Host->new($host, $prop));
		if (defined $prop->{build_user} && 
		    !defined $state->{build_user} &&
		    !$state->defines("BUILD_USER")) {
		    	$state->{build_user} = $prop->{build_user};
		}
	}
}

sub add_host
{
	my ($class, $state, $host, @properties) = @_;
	my $prop = DPB::HostProperties->new($state->{default_prop});
	for my $arg (@properties) {
		if ($arg =~ m/^(.*?)=(.*)$/) {
			$prop->{$1} = $2;
		}
	}
	$prop->finalize_with_overrides($state->{override_prop});
	DPB::Core::Init->init_core(
	    DPB::Core::Init->new(DPB::Host->new($host, $prop)), $state);
}

package DPB::ExternalStub;
sub new
{
	my $class = shift;
	bless {}, $class;
}

sub receive_commands
{
}

sub cleanup
{
}

1;

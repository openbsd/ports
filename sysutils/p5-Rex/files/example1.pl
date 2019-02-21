#
#   Example Rex config
#
####


use Rex -feature => ['1.4'];
use Rex::Group::Lookup::File;


# Global settings:
# ================
my $me  = "charlie";
my $you = "raoul";


group allservers    => lookup_file("./hosts/allservers.lst");

auth for => "allservers" =>
    user            => "rex",
    private_key     => "/home/${me}/.ssh/id_rex",
    key_auth        => 1;


desc "Deploy the default doas.conf file";
task "install_etc_doas_dot_conf", group => "allservers", sub {
    file "/etc/doas.conf", source => "files/etc/doas.conf";
};


desc "Deploy the default .tmux.conf";
task "install_dot_tmux_doc_conf", group => "allservers", sub {
    file "/home/${me}/.tmux.conf",
    source  => "files/home/${me}/.tmux.conf",
    owner   => "${me}",
    group   => "wheel";
};


desc "Ensure user ${you} exists";
task "ensure_user_${you}", group => "allservers", sub {
    account "$you",
    ensure      => "present",
    uid         => 1000,
    home        => "/home/${you}",
    comment     => 'Raoul',
    groups      => [ 'wheel', 'wsrc' ],
    crypt_password => '$2a$08$BBnvlWvzjxxxx...',
    create_home => TRUE;
};


desc "Start apmd daemon";
task "start_apmd", group => "physicals", sub {
    service "apmd" => "start";
};


desc "Install detox via the 'pkg' module";
task "install_detox_pkg", group => "allservers", sub {
    my %host_info = Rex::Hardware->get(qw/ Host Kernel /);
    my $current = sysctl "kern.version";
    my $ver = ($current =~ m/-current/) ? 'snapshots' : ${host_info{'Host'}{'operating_system_release'}};
    pkg "detox",
    ensure => "latest",
    env => { PKG_PATH => "https://ftp.fr.openbsd.org/pub/OpenBSD/${ver}/packages/${host_info{'Kernel'}{'architecture'}}/:/usr/ports/packages/${host_info{'Kernel'}{'architecture'}}/all/",
        PKG_CACHE => "/usr/ports/packages/${host_info{'Kernel'}{'architecture'}}/all/",
    },
    on_change => sub { say "package was installed/updated"; };
};

# this file is partially taken from 8.11 version of OpenVoxDB, afterward it
# was removed from the distributed tarball
prefix ?= /usr/local
datadir ?= $(prefix)/share
confdir ?= /etc
rubylibdir ?= $(shell ruby -rrbconfig -e "puts RbConfig::CONFIG['sitelibdir']")
rundir ?= /var/run
bindir ?= /usr/bin

install-puppetserver:
	install -d -m 0755 "$(DESTDIR)$(datadir)/puppetserver"
	install -m 0644 puppet-server-release.jar "$(DESTDIR)$(datadir)/puppetserver"
	install -m 0774 ext/ezbake-functions.sh "$(DESTDIR)$(datadir)/puppetserver"
	install -m 0644 ext/ezbake.manifest "$(DESTDIR)$(datadir)/puppetserver"
	install -d -m 0755 "$(DESTDIR)$(confdir)/puppetlabs/puppetserver/conf.d"
	install -m 0644 ext/config/conf.d/puppetserver.conf "$(DESTDIR)$(confdir)/puppetlabs/puppetserver/conf.d/puppetserver.conf"
	install -m 0644 ext/config/request-logging.xml "$(DESTDIR)$(confdir)/puppetlabs/puppetserver/request-logging.xml"
	install -m 0644 ext/config/logback.xml "$(DESTDIR)$(confdir)/puppetlabs/puppetserver/logback.xml"
	install -m 0644 ext/config/conf.d/global.conf "$(DESTDIR)$(confdir)/puppetlabs/puppetserver/conf.d/global.conf"
	install -m 0644 ext/config/conf.d/web-routes.conf "$(DESTDIR)$(confdir)/puppetlabs/puppetserver/conf.d/web-routes.conf"
	install -m 0644 ext/config/conf.d/auth.conf "$(DESTDIR)$(confdir)/puppetlabs/puppetserver/conf.d/auth.conf"
	install -m 0644 ext/config/conf.d/metrics.conf "$(DESTDIR)$(confdir)/puppetlabs/puppetserver/conf.d/metrics.conf"
	install -m 0644 ext/config/conf.d/ca.conf "$(DESTDIR)$(confdir)/puppetlabs/puppetserver/conf.d/ca.conf"
	install -m 0644 ext/config/conf.d/webserver.conf "$(DESTDIR)$(confdir)/puppetlabs/puppetserver/conf.d/webserver.conf"
	install -m 0644 ext/config/services.d/ca.cfg "$(DESTDIR)$(confdir)/puppetlabs/puppetserver/services.d/ca.cfg"
	install -d -m 0755 "$(DESTDIR)$(datadir)/puppetserver/cli"
	install -d -m 0755 "$(DESTDIR)$(datadir)/puppetserver/cli/apps"
	install -d -m 0755 "$(DESTDIR)$(bindir)"
	install -m 0755 "ext/bin/puppetserver" "$(DESTDIR)$(bindir)/puppetserver"
	install -m 0755 ext/cli/foreground "$(DESTDIR)$(datadir)/puppetserver/cli/apps/foreground"
	install -m 0755 ext/cli/irb "$(DESTDIR)$(datadir)/puppetserver/cli/apps/irb"
	install -m 0755 ext/cli/ca "$(DESTDIR)$(datadir)/puppetserver/cli/apps/ca"
	install -m 0755 ext/cli/gem "$(DESTDIR)$(datadir)/puppetserver/cli/apps/gem"
	install -m 0755 ext/cli/stop "$(DESTDIR)$(datadir)/puppetserver/cli/apps/stop"
	install -m 0755 ext/cli/start "$(DESTDIR)$(datadir)/puppetserver/cli/apps/start"
	install -m 0755 ext/cli/ruby "$(DESTDIR)$(datadir)/puppetserver/cli/apps/ruby"
	install -m 0755 ext/cli/reload "$(DESTDIR)$(datadir)/puppetserver/cli/apps/reload"
	install -m 0755 ext/cli/prune "$(DESTDIR)$(datadir)/puppetserver/cli/apps/prune"
	install -d -m 0755 "$(DESTDIR)$(rundir)"


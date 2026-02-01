# this file is partially taken from 8.11 version of OpenVoxDB, afterward it
# was removed from the distributed tarball
prefix ?= /usr/local
datadir ?= $(prefix)/share
confdir ?= /etc
rubylibdir ?= $(shell ruby -rrbconfig -e "puts RbConfig::CONFIG['sitelibdir']")
rundir ?= /var/run
bindir ?= /usr/bin

install-puppetdb:
	install -d -m 0755 "$(DESTDIR)$(datadir)/puppetdb"
	install -m 0644 puppetdb.jar "$(DESTDIR)$(datadir)/puppetdb"
	install -m 0774 ext/ezbake-functions.sh "$(DESTDIR)$(datadir)/puppetdb"
	install -m 0644 ext/ezbake.manifest "$(DESTDIR)$(datadir)/puppetdb"
	install -d -m 0755 "$(DESTDIR)$(confdir)/puppetlabs/puppetdb/conf.d"
	install -m 0644 ext/config/logback.xml "$(DESTDIR)$(confdir)/puppetlabs/puppetdb/logback.xml"
	install -m 0644 ext/config/conf.d/config.ini "$(DESTDIR)$(confdir)/puppetlabs/puppetdb/conf.d/config.ini"
	install -m 0644 ext/config/conf.d/database.ini "$(DESTDIR)$(confdir)/puppetlabs/puppetdb/conf.d/database.ini"
	install -m 0644 ext/config/conf.d/repl.ini "$(DESTDIR)$(confdir)/puppetlabs/puppetdb/conf.d/repl.ini"
	install -m 0644 ext/config/conf.d/jetty.ini "$(DESTDIR)$(confdir)/puppetlabs/puppetdb/conf.d/jetty.ini"
	install -m 0644 ext/config/conf.d/auth.conf "$(DESTDIR)$(confdir)/puppetlabs/puppetdb/conf.d/auth.conf"
	install -m 0644 ext/config/bootstrap.cfg "$(DESTDIR)$(confdir)/puppetlabs/puppetdb/bootstrap.cfg"
	install -m 0644 ext/config/request-logging.xml "$(DESTDIR)$(confdir)/puppetlabs/puppetdb/request-logging.xml"
	install -d -m 0755 "$(DESTDIR)$(datadir)/puppetdb/cli"
	install -d -m 0755 "$(DESTDIR)$(datadir)/puppetdb/cli/apps"
	install -d -m 0755 "$(DESTDIR)$(bindir)"
	install -m 0755 "ext/bin/puppetdb" "$(DESTDIR)$(bindir)/puppetdb"
	install -m 0755 ext/cli/foreground "$(DESTDIR)$(datadir)/puppetdb/cli/apps/foreground"
	install -m 0755 ext/cli/anonymize "$(DESTDIR)$(datadir)/puppetdb/cli/apps/anonymize"
	install -m 0755 ext/cli/delete-reports "$(DESTDIR)$(datadir)/puppetdb/cli/apps/delete-reports"
	install -m 0755 ext/cli/stop "$(DESTDIR)$(datadir)/puppetdb/cli/apps/stop"
	install -m 0755 ext/cli/start "$(DESTDIR)$(datadir)/puppetdb/cli/apps/start"
	install -m 0755 ext/cli/ssl-setup "$(DESTDIR)$(datadir)/puppetdb/cli/apps/ssl-setup"
	install -m 0755 ext/cli/reload "$(DESTDIR)$(datadir)/puppetdb/cli/apps/reload"
	install -m 0755 ext/cli/config-migration "$(DESTDIR)$(datadir)/puppetdb/cli/apps/config-migration"
	install -m 0755 ext/cli/upgrade "$(DESTDIR)$(datadir)/puppetdb/cli/apps/upgrade"


install-puppetdb-termini:
	install -Dm 0644 puppet/face/node/deactivate.rb "$(DESTDIR)$(rubylibdir)/puppet/face/node/deactivate.rb"
	install -Dm 0644 puppet/face/node/status.rb "$(DESTDIR)$(rubylibdir)/puppet/face/node/status.rb"
	install -Dm 0644 puppet/functions/puppetdb_query.rb "$(DESTDIR)$(rubylibdir)/puppet/functions/puppetdb_query.rb"
	install -Dm 0644 puppet/indirector/catalog/puppetdb.rb "$(DESTDIR)$(rubylibdir)/puppet/indirector/catalog/puppetdb.rb"
	install -Dm 0644 puppet/indirector/node/puppetdb.rb "$(DESTDIR)$(rubylibdir)/puppet/indirector/node/puppetdb.rb"
	install -Dm 0644 puppet/indirector/resource/puppetdb.rb "$(DESTDIR)$(rubylibdir)/puppet/indirector/resource/puppetdb.rb"
	install -Dm 0644 puppet/indirector/facts/puppetdb.rb "$(DESTDIR)$(rubylibdir)/puppet/indirector/facts/puppetdb.rb"
	install -Dm 0644 puppet/indirector/facts/puppetdb_apply.rb "$(DESTDIR)$(rubylibdir)/puppet/indirector/facts/puppetdb_apply.rb"
	install -Dm 0644 puppet/util/puppetdb.rb "$(DESTDIR)$(rubylibdir)/puppet/util/puppetdb.rb"
	install -Dm 0644 puppet/util/puppetdb/command_names.rb "$(DESTDIR)$(rubylibdir)/puppet/util/puppetdb/command_names.rb"
	install -Dm 0644 puppet/util/puppetdb/char_encoding.rb "$(DESTDIR)$(rubylibdir)/puppet/util/puppetdb/char_encoding.rb"
	install -Dm 0644 puppet/util/puppetdb/http.rb "$(DESTDIR)$(rubylibdir)/puppet/util/puppetdb/http.rb"
	install -Dm 0644 puppet/util/puppetdb/command.rb "$(DESTDIR)$(rubylibdir)/puppet/util/puppetdb/command.rb"
	install -Dm 0644 puppet/util/puppetdb/atom.rb "$(DESTDIR)$(rubylibdir)/puppet/util/puppetdb/atom.rb"
	install -Dm 0644 puppet/util/puppetdb/config.rb "$(DESTDIR)$(rubylibdir)/puppet/util/puppetdb/config.rb"
	install -Dm 0644 puppet/reports/puppetdb.rb "$(DESTDIR)$(rubylibdir)/puppet/reports/puppetdb.rb"


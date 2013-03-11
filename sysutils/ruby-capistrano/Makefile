# $OpenBSD: Makefile,v 1.17 2013/03/11 11:41:32 espie Exp $

COMMENT =	execute commands in parallel on multiple remote machines

DISTNAME =	capistrano-2.5.9
REVISION =	6
CATEGORIES =	sysutils

HOMEPAGE =	http://www.capify.org/

# MIT
PERMIT_PACKAGE_CDROM =		Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		net/ruby-net-ssh,${MODRUBY_FLAVOR} \
			net/ruby-net-sftp,${MODRUBY_FLAVOR} \
			net/ruby-net-scp,${MODRUBY_FLAVOR} \
			net/ruby-net-ssh-gateway,${MODRUBY_FLAVOR} \
			devel/ruby-highline,${MODRUBY_FLAVOR}

TEST_DEPENDS =	devel/ruby-mocha,${MODRUBY_FLAVOR}

do-test:
	@cd ${WRKBUILD}/test && ${RUBY} -I../lib \
		-e 'ARGV.each { |f| load f unless f =~ /^-/  }' *.rb

.include <bsd.port.mk>

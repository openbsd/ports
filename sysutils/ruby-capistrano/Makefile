# $OpenBSD: Makefile,v 1.19 2014/10/11 19:54:47 jeremy Exp $

COMMENT =	execute commands in parallel on multiple remote machines

DISTNAME =	capistrano-2.5.9
REVISION =	8
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

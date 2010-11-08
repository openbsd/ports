# $OpenBSD: Makefile,v 1.11 2010/11/08 23:28:55 jeremy Exp $

COMMENT =	execute commands in parallel on multiple remote machines

DISTNAME =	capistrano-2.5.9
REVISION =	2
CATEGORIES =	sysutils

HOMEPAGE =	http://www.capify.org/

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		:${MODRUBY_PKG_PREFIX}-net-ssh-*:net/ruby-net-ssh,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-net-sftp-*:net/ruby-net-sftp,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-net-scp-*:net/ruby-net-scp,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-net-ssh-gateway-*:net/ruby-net-ssh-gateway,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-highline-*:devel/ruby-highline,${FLAVOR}

REGRESS_DEPENDS =	:${MODRUBY_PKG_PREFIX}-mocha-*:devel/ruby-mocha,${FLAVOR}

do-regress:
	@cd ${WRKBUILD}/test && ${RUBY} -I../lib \
		-e 'ARGV.each { |f| load f unless f =~ /^-/  }' *.rb

.include <bsd.port.mk>

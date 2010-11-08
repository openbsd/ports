# $OpenBSD: Makefile,v 1.6 2010/11/08 23:28:55 jeremy Exp $

COMMENT =		library for programmatically tunneling connections

DISTNAME =		net-ssh-gateway-1.0.1
REVISION =		1
CATEGORIES =		net

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		:${MODRUBY_PKG_PREFIX}-net-ssh->=2.0.0:net/ruby-net-ssh,${FLAVOR}

CONFIGURE_STYLE =	ruby gem

REGRESS_DEPENDS=	:${MODRUBY_PKG_PREFIX}-mocha-*:devel/ruby-mocha,${FLAVOR}

do-regress:
	@cd ${WRKBUILD} && ${RUBY} -rubygems -Ilib/ test/gateway_test.rb

.include <bsd.port.mk>

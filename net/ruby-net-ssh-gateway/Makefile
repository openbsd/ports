# $OpenBSD: Makefile,v 1.13 2013/03/11 11:35:56 espie Exp $

COMMENT =		library for programmatically tunneling connections

DISTNAME =		net-ssh-gateway-1.1.0
CATEGORIES =		net

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		net/ruby-net-ssh,${MODRUBY_FLAVOR}>=2.0.0

CONFIGURE_STYLE =	ruby gem

TEST_DEPENDS=	devel/ruby-mocha,${MODRUBY_FLAVOR}

do-test:
	@cd ${WRKBUILD} && ${RUBY} -rubygems -Ilib/ test/gateway_test.rb

.include <bsd.port.mk>

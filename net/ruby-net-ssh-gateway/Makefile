# $OpenBSD: Makefile,v 1.15 2015/05/14 17:57:13 jasper Exp $

COMMENT =		library for programmatically tunneling connections

DISTNAME =		net-ssh-gateway-1.2.0
CATEGORIES =		net

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		net/ruby-net-ssh,${MODRUBY_FLAVOR}>=2.6.5

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =		rake

TEST_DEPENDS =		devel/ruby-jeweler,${MODRUBY_FLAVOR} \
			devel/ruby-mocha,${MODRUBY_FLAVOR}

.include <bsd.port.mk>

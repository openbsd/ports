# $OpenBSD: Makefile,v 1.8 2020/07/03 21:45:59 sthen Exp $

COMMENT =		require logged-in user for specified routes

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Dancer2-Plugin-Auth-Tiny-0.008
CATEGORIES =		www
REVISION =		0

# Apache 2.0
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		www/p5-Dancer2>=0.154000

TEST_DEPENDS =		www/p5-HTTP-Cookies \
			www/p5-HTTP-Message \
			www/p5-Plack

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.7 2019/09/21 01:00:58 afresh1 Exp $

COMMENT =		require logged-in user for specified routes

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Dancer2-Plugin-Auth-Tiny-0.008
CATEGORIES =		www

# Apache 2.0
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		www/p5-Dancer2>=0.154000

TEST_DEPENDS =		www/p5-HTTP-Cookies \
			www/p5-HTTP-Message \
			www/p5-Plack

.include <bsd.port.mk>

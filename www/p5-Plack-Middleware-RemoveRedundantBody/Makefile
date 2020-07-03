# $OpenBSD: Makefile,v 1.6 2020/07/03 21:46:05 sthen Exp $

COMMENT =		removes body for HTTP response if it's not required

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Plack-Middleware-RemoveRedundantBody-0.09
CATEGORIES =		www
REVISION =		0

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		www/p5-Plack

TEST_DEPENDS =		www/p5-HTTP-Message

.include <bsd.port.mk>

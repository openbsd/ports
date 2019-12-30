# $OpenBSD: Makefile,v 1.5 2019/12/30 11:55:58 sthen Exp $

COMMENT =		removes body for HTTP response if it's not required

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Plack-Middleware-RemoveRedundantBody-0.09
CATEGORIES =		www

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		www/p5-Plack

TEST_DEPENDS =		www/p5-HTTP-Message

.include <bsd.port.mk>

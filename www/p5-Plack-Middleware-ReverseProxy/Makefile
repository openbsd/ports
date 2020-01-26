# $OpenBSD: Makefile,v 1.6 2020/01/26 21:01:14 afresh1 Exp $

COMMENT =	supports app to run as a reverse proxy backend

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Plack-Middleware-ReverseProxy-0.16
CATEGORIES =	www

# same as perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	www/p5-Plack \
		devel/p5-YAML

TEST_DEPENDS = devel/p5-Test-Base

.include <bsd.port.mk>

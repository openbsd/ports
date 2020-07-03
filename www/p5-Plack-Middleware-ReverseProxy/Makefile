# $OpenBSD: Makefile,v 1.7 2020/07/03 21:46:05 sthen Exp $

COMMENT =	supports app to run as a reverse proxy backend

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Plack-Middleware-ReverseProxy-0.16
CATEGORIES =	www
REVISION =	0

# same as perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	www/p5-Plack \
		devel/p5-YAML

TEST_DEPENDS = devel/p5-Test-Base

.include <bsd.port.mk>

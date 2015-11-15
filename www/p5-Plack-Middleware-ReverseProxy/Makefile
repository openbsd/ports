# $OpenBSD: Makefile,v 1.3 2015/11/15 10:24:42 benoit Exp $

COMMENT =	supports app to run as a reverse proxy backend

MODULES =	cpan
DISTNAME =	Plack-Middleware-ReverseProxy-0.15
CATEGORIES =	www

# same as perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	www/p5-Plack \
		devel/p5-YAML

TEST_DEPENDS = devel/p5-Test-Base

.include <bsd.port.mk>

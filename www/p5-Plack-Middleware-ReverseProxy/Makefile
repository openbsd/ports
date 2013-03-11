# $OpenBSD: Makefile,v 1.2 2013/03/11 11:44:46 espie Exp $

COMMENT =	supports app to run as a reverse proxy backend

MODULES =	cpan
DISTNAME =	Plack-Middleware-ReverseProxy-0.11
CATEGORIES =	www

# same as perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	www/p5-Plack \
		devel/p5-YAML

TEST_DEPENDS = devel/p5-Test-Base

.include <bsd.port.mk>

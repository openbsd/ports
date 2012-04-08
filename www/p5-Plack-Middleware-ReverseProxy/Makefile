# $OpenBSD: Makefile,v 1.1.1.1 2012/04/08 21:06:47 sthen Exp $

COMMENT =	supports app to run as a reverse proxy backend

MODULES =	cpan
DISTNAME =	Plack-Middleware-ReverseProxy-0.11
CATEGORIES =	www

# same as perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	www/p5-Plack \
		devel/p5-YAML

REGRESS_DEPENDS = devel/p5-Test-Base

.include <bsd.port.mk>

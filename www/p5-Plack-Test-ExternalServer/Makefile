# $OpenBSD: Makefile,v 1.4 2016/03/20 19:57:21 naddy Exp $

COMMENT =	run HTTP tests on external live servers

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Plack-Test-ExternalServer-0.02
CATEGORIES =	www

# same as perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	www/p5-libwww \
		www/p5-Plack \
		net/p5-Test-TCP \
		www/p5-URI

.include <bsd.port.mk>

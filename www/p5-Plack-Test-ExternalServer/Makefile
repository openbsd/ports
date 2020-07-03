# $OpenBSD: Makefile,v 1.7 2020/07/03 21:46:05 sthen Exp $

COMMENT =	run HTTP tests on external live servers

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Plack-Test-ExternalServer-0.02
CATEGORIES =	www
FIX_EXTRACT_PERMISSIONS=Yes
REVISION =	0

# same as perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	www/p5-libwww \
		www/p5-Plack \
		net/p5-Test-TCP \
		www/p5-URI

.include <bsd.port.mk>

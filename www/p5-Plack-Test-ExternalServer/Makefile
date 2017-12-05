# $OpenBSD: Makefile,v 1.5 2017/12/05 16:25:46 espie Exp $

COMMENT =	run HTTP tests on external live servers

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Plack-Test-ExternalServer-0.02
CATEGORIES =	www
FIX_EXTRACT_PERMISSIONS=Yes

# same as perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	www/p5-libwww \
		www/p5-Plack \
		net/p5-Test-TCP \
		www/p5-URI

.include <bsd.port.mk>

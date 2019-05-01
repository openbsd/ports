# $OpenBSD: Makefile,v 1.3 2019/05/01 19:57:08 sthen Exp $

COMMENT =		removes body for HTTP response if it's not required

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Plack-Middleware-RemoveRedundantBody-0.05
CATEGORIES =		www
REVISION =		0

# Perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		www/p5-Plack

TEST_DEPENDS =		www/p5-HTTP-Message \
			www/p5-Plack

.include <bsd.port.mk>

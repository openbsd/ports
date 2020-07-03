# $OpenBSD: Makefile,v 1.15 2020/07/03 21:45:18 sthen Exp $

COMMENT =	easy-to-use date/time formatting

DISTNAME =	Time-Format-1.16
REVISION =	0

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# free, open-source
PERMIT_PACKAGE =	Yes

MODULES =		cpan
BUILD_DEPENDS =		devel/p5-Module-Build>=0.4
TEST_DEPENDS =		converters/p5-DateManip \
			devel/p5-DateTime

CONFIGURE_STYLE =	modbuild

PKG_ARCH =		*

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.13 2020/01/01 22:53:40 bluhm Exp $

COMMENT =	easy-to-use date/time formatting

DISTNAME =	Time-Format-1.15

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

# $OpenBSD: Makefile,v 1.12 2014/06/14 23:26:03 sthen Exp $

COMMENT =	Perl extension to the X On Screen Display library (xosd)
SHARED_ONLY =	Yes

MODULES =	cpan
DISTNAME =	X-Osd-0.7
REVISION =	3
CATEGORIES =	x11

# Perl
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c xosd

LIB_DEPENDS =	x11/xosd


TEST_IS_INTERACTIVE =	x11

.include <bsd.port.mk>

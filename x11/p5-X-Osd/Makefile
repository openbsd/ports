# $OpenBSD: Makefile,v 1.11 2013/10/11 23:51:51 naddy Exp $

COMMENT =	Perl extension to the X On Screen Display library (xosd)
SHARED_ONLY =	Yes

MODULES =	cpan
DISTNAME =	X-Osd-0.7
REVISION =	2
CATEGORIES =	x11

# Perl
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c xosd

LIB_DEPENDS =	x11/xosd


TEST_IS_INTERACTIVE =	x11

.include <bsd.port.mk>

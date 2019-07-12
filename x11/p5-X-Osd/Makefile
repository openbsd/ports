# $OpenBSD: Makefile,v 1.15 2019/07/12 20:51:18 sthen Exp $

COMMENT =	Perl extension to the X On Screen Display library (xosd)

MODULES =	cpan
DISTNAME =	X-Osd-0.7
REVISION =	4
CATEGORIES =	x11

# Perl
PERMIT_PACKAGE =		Yes

WANTLIB += c perl xosd

LIB_DEPENDS =	x11/xosd


TEST_IS_INTERACTIVE =	x11

.include <bsd.port.mk>

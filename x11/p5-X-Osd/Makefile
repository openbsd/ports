# $OpenBSD: Makefile,v 1.2 2009/09/06 10:46:25 ajacoutot Exp $

COMMENT =	Perl extension to the X On Screen Display library (xosd)
SHARED_ONLY =	Yes

MODULES =	cpan
DISTNAME =	X-Osd-0.7
CATEGORIES =	x11

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

LIB_DEPENDS =	xosd::x11/xosd

USE_X11 =	Yes

REGRESS_IS_INTERACTIVE =	x11

.include <bsd.port.mk>

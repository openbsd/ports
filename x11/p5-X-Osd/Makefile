# $OpenBSD: Makefile,v 1.6 2010/10/24 21:15:33 ajacoutot Exp $

COMMENT =	Perl extension to the X On Screen Display library (xosd)
SHARED_ONLY =	Yes

MODULES =	cpan
DISTNAME =	X-Osd-0.7
REVISION =	0
CATEGORIES =	x11

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB += xosd

LIB_DEPENDS =	::x11/xosd

USE_GROFF =	Yes

REGRESS_IS_INTERACTIVE =	x11

.include <bsd.port.mk>

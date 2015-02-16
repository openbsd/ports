# $OpenBSD: Makefile,v 1.4 2015/02/16 22:57:12 naddy Exp $

COMMENT =		X11 printing system

DISTNAME =		libXp-1.0.1

SHARED_LIBS +=  Xp                        11.0

CATEGORIES =		print devel x11

HOMEPAGE =		http://xprint.mozdev.org

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xau Xext xcb

MASTER_SITES =		ftp://ftp.cs.cuhk.edu.hk/pub/X11/individual/lib/
EXTRACT_SUFX =		.tar.bz2

BUILD_DEPENDS =		print/xprintproto

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

.include <bsd.port.mk>

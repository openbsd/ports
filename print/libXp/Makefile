# $OpenBSD: Makefile,v 1.1.1.1 2012/11/29 18:40:05 pascal Exp $

COMMENT =		X11 printing system

DISTNAME =		libXp-1.0.1

SHARED_LIBS +=  Xp                        11.0

CATEGORIES =		print devel x11

HOMEPAGE =		http://xprint.mozdev.org

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += X11 Xau Xext xcb

MASTER_SITES =		ftp://ftp.cs.cuhk.edu.hk/pub/X11/individual/lib/
EXTRACT_SUFX =		.tar.bz2

BUILD_DEPENDS =		print/xprintproto

USE_GROFF =		Yes
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu

NO_REGRESS =		Yes

.include <bsd.port.mk>

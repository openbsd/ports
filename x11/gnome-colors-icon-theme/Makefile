# $OpenBSD: Makefile,v 1.8 2013/04/02 16:16:47 ajacoutot Exp $

COMMENT =		complete, multi-colored suite of icons

V =			5.5.1
DISTNAME =		gnome-colors-${V}
PKGNAME =		gnome-colors-icon-theme-${V}
CATEGORIES =		x11

REVISION =		5

HOMEPAGE =		http://code.google.com/p/gnome-colors/
MASTER_SITES =		http://gnome-colors.googlecode.com/files/

# GPLv2 
PERMIT_PACKAGE_CDROM =	Yes

PKG_ARCH =		*
NO_BUILD =		Yes
NO_TEST =		Yes

RUN_DEPENDS =		x11/gtk+2,-guic

WRKDIST =		${WRKDIR}
ICONSDIR =		${PREFIX}/share/icons/

do-install:
	${INSTALL_DATA_DIR} ${ICONSDIR}
	cd ${WRKDIST} ; pax -rw gnome-* ${ICONSDIR}

.include <bsd.port.mk>

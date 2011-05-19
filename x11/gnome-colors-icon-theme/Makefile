# $OpenBSD: Makefile,v 1.4 2011/05/19 14:43:16 ajacoutot Exp $

COMMENT =		complete, multi-colored suite of icons

V =			5.5.1
DISTNAME =		gnome-colors-${V}
PKGNAME =		gnome-colors-icon-theme-${V}
CATEGORIES =		x11

REVISION =		2

HOMEPAGE =		http://code.google.com/p/gnome-colors/
MASTER_SITES =		http://gnome-colors.googlecode.com/files/

# GPLv2 
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

PKG_ARCH =		*
NO_BUILD =		Yes
NO_REGRESS =		Yes

# Add the corresponding "Inherits" theme.
RUN_DEPENDS +=		x11/gnome/icon-theme

WRKDIST =		${WRKDIR}
ICONSDIR =		${PREFIX}/share/icons/

do-install:
	${INSTALL_DATA_DIR} ${ICONSDIR}
	cd ${WRKDIST} ; pax -rw gnome-* ${ICONSDIR}

.include <bsd.port.mk>

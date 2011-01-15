# $OpenBSD: Makefile,v 1.1.1.1 2011/01/15 12:50:42 landry Exp $

COMMENT =		smooth xcursor theme with shadows
DISTNAME =		28310-neutral-1.13a
PKGNAME =		xcursor-neutral-1.13
CATEGORIES =		x11

MAINTAINER =		Lazaros Koromilas <lostd@2f30.org>

# Artistic 2.0
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://gnome-look.org/CONTENT/content-files/ \
			http://xfce-look.org/CONTENT/content-files/ \
			http://kde-look.org/CONTENT/content-files/

PKG_ARG =		*
NO_BUILD =		Yes
NO_REGRESS =		Yes

WRKDIST =		${WRKDIR}/neutral

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/icons/neutral/cursors
	${INSTALL_DATA} ${WRKSRC}/cursors/* ${PREFIX}/lib/X11/icons/neutral/cursors

.include <bsd.port.mk>

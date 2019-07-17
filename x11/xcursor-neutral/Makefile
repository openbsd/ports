# $OpenBSD: Makefile,v 1.4 2019/07/17 14:39:44 danj Exp $

COMMENT =		smooth xcursor theme with shadows
DISTNAME =		28310-neutral-1.13a
PKGNAME =		xcursor-neutral-1.13
CATEGORIES =		x11
REVISION =		0

# Artistic 2.0
PERMIT_PACKAGE =	Yes

MASTER_SITES =		http://gnome-look.org/CONTENT/content-files/ \
			http://xfce-look.org/CONTENT/content-files/ \
			http://kde-look.org/CONTENT/content-files/

PKG_ARG =		*
NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/neutral

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/icons/neutral/cursors
	${INSTALL_DATA} ${WRKSRC}/cursors/* ${PREFIX}/lib/X11/icons/neutral/cursors

.include <bsd.port.mk>

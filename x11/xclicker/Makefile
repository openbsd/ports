COMMENT =		autoclicker for X11

GH_ACCOUNT =		robiot
GH_PROJECT =		xclicker
GH_TAGNAME =		v1.5.1
CATEGORIES =		x11

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv3 only
PERMIT_PACKAGE	=	Yes

WANTLIB += X11 Xi Xtst c gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3

MODULES =		devel/meson

BUILD_DEPENDS =		devel/meson
LIB_DEPENDS =		x11/gtk+3
RUN_DEPENDS =           devel/desktop-file-utils

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/xclicker ${PREFIX}/bin/

	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKDIST}/assets/xclicker.desktop \
		${PREFIX}/share/applications/

	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKDIST}/assets/icon.png \
		${PREFIX}/share/pixmaps/

.include <bsd.port.mk>

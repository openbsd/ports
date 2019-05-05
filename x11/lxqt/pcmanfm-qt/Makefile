# $OpenBSD: Makefile,v 1.3 2019/05/05 17:09:07 naddy Exp $

COMMENT =	file manager and desktop icon manager

VERSION =	0.13.0

NAME =		pcmanfm-qt
DISTNAME =	${NAME}-${VERSION}
REVISION =	1

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += Qt5X11Extras c exif fm fm-qt gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gthread-2.0 intl m menu-cache xcb

LIB_DEPENDS +=		x11/qt5/qtx11extras \
			x11/lxqt/libfm-qt

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		devel/desktop-file-utils \
			x11/lxqt/l10n,-pcmanfm-qt

CONFIGURE_ARGS +=	-DPULL_TRANSLATIONS:BOOL=OFF

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/${NAME}/

.include <bsd.port.mk>

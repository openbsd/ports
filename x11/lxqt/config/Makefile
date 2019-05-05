# $OpenBSD: Makefile,v 1.3 2019/05/05 17:09:07 naddy Exp $

COMMENT =	tools to configure LXQt and the underlying operating system

VERSION =	0.13.0

NAME =		lxqt-config
DISTNAME =	${NAME}-${VERSION}
REVISION =	1

WANTLIB += ${COMPILER_LIBCXX} ICE KF5WindowSystem Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Svg Qt5Widgets Qt5X11Extras
WANTLIB += Qt5Xdg Qt5XdgIconLoader Qt5Xml SM X11 Xcursor Xext
WANTLIB += Xfixes c lxqt m xcb xcb-randr z

LIB_DEPENDS +=		x11/lxqt/liblxqt \
			x11/qt5/qtsvg

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		devel/desktop-file-utils \
			x11/gtk+3,-guic \
			x11/lxqt/l10n,-config

# No KF5Screen yet...
CONFIGURE_ARGS +=	-DWITH_MONITOR=No
CONFIGURE_ARGS +=	-DPULL_TRANSLATIONS:BOOL=OFF

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/${NAME}/

.include <bsd.port.mk>

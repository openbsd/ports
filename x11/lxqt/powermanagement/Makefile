# $OpenBSD: Makefile,v 1.6 2020/09/10 13:32:37 mariani Exp $

COMMENT =	power management module for LXQt

VERSION =	0.15.0
REVISION =      0

NAME =		lxqt-powermanagement
DISTNAME =	${NAME}-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} KF5IdleTime KF5Solid KF5WindowSystem
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Svg Qt5Widgets Qt5X11Extras
WANTLIB += Qt5Xdg Qt5XdgIconLoader Qt5Xml c gio-2.0 glib-2.0 gobject-2.0
WANTLIB += lxqt m

LIB_DEPENDS +=		devel/kf5/kidletime \
			devel/kf5/solid \
			x11/qt5/qtsvg \
			x11/lxqt/liblxqt

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		devel/desktop-file-utils \
			sysutils/upower \
			x11/gtk+3,-guic

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/${NAME}/

.include <bsd.port.mk>

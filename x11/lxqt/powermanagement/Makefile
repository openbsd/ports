# $OpenBSD: Makefile,v 1.7 2021/11/22 05:45:43 rsadowski Exp $

COMMENT =	power management module for LXQt

NAME =		lxqt-powermanagement

WANTLIB += ${COMPILER_LIBCXX} KF5IdleTime KF5Solid KF5WindowSystem
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Svg Qt5Widgets Qt5X11Extras
WANTLIB += Qt5Xdg Qt5XdgIconLoader Qt5Xml X11 c gio-2.0 glib-2.0
WANTLIB += gobject-2.0 lxqt lxqt-globalkeys m

LIB_DEPENDS +=		devel/kf5/kidletime \
			devel/kf5/kwindowsystem \
			devel/kf5/solid \
			x11/lxqt/globalkeys \
			x11/lxqt/liblxqt \
			x11/qt5/qtsvg

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		devel/desktop-file-utils \
			sysutils/upower \
			x11/gtk+3,-guic

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/${NAME}/

.include <bsd.port.mk>

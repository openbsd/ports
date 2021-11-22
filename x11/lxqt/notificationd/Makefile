# $OpenBSD: Makefile,v 1.6 2021/11/22 05:45:43 rsadowski Exp $

COMMENT =	notification daemon for LXQt

NAME =		lxqt-notificationd

WANTLIB += ${COMPILER_LIBCXX} KF5WindowSystem Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Svg Qt5Widgets Qt5X11Extras Qt5Xdg Qt5XdgIconLoader
WANTLIB += Qt5Xml X11 c gio-2.0 glib-2.0 gobject-2.0 lxqt m

LIB_DEPENDS +=		x11/lxqt/liblxqt \
			devel/kf5/kwindowsystem

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		devel/desktop-file-utils

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/${NAME}/

.include <bsd.port.mk>

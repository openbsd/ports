# $OpenBSD: Makefile,v 1.7 2021/11/22 05:45:42 rsadowski Exp $

COMMENT =	information about LXQt and the system its running on

NAME =		lxqt-about

WANTLIB += ${COMPILER_LIBCXX} KF5WindowSystem Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Svg Qt5Widgets Qt5X11Extras Qt5Xdg Qt5XdgIconLoader
WANTLIB += Qt5Xml X11 c gio-2.0 glib-2.0 gobject-2.0 lxqt m

LIB_DEPENDS +=		x11/lxqt/liblxqt>=1.0.0

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		devel/desktop-file-utils

.include <bsd.port.mk>

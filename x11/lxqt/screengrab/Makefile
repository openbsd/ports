# $OpenBSD: Makefile,v 1.6 2021/11/22 05:45:44 rsadowski Exp $

COMMENT =	tool for fast making screenshots

VERSION =	2.3.0

NAME =		screengrab

SHARED_LIBS +=  extedit                   0.0 # 1.0

WANTLIB += ${COMPILER_LIBCXX} ICE KF5WindowSystem Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Svg Qt5Widgets Qt5X11Extras Qt5Xdg
WANTLIB += Qt5XdgIconLoader Qt5Xml SM X11 X11-xcb Xext c gio-2.0
WANTLIB += glib-2.0 gobject-2.0 m xcb xcb-shape xcb-xfixes

LIB_DEPENDS +=		x11/qt5/qtx11extras \
			x11/qt5/qtsvg \
			x11/lxqt/libqtxdg \
			devel/kf5/kwindowsystem

RUN_DEPENDS +=		devel/desktop-file-utils \
			x11/gtk+3,-guic

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	mv ${PREFIX}/share/${NAME}/${NAME}.conf \
		${PREFIX}/share/examples/${NAME}/

.include <bsd.port.mk>

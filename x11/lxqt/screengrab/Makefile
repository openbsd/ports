# $OpenBSD: Makefile,v 1.3 2019/05/05 17:09:08 naddy Exp $

COMMENT =	tool for fast making screenshots

VERSION =	1.99

NAME =		screengrab
DISTNAME =	${NAME}-${VERSION}
REVISION =	1

SHARED_LIBS +=  extedit                   0.0 # 1.0
SHARED_LIBS +=  uploader                  0.0 # 1.0

WANTLIB += ${COMPILER_LIBCXX} ICE KF5WindowSystem Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Svg Qt5Widgets Qt5X11Extras Qt5Xdg
WANTLIB += Qt5XdgIconLoader Qt5Xml SM X11 X11-xcb Xext c m xcb
WANTLIB += xcb-shape xcb-xfixes

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

# $OpenBSD: Makefile,v 1.1.1.1 2018/09/14 15:17:26 rsadowski Exp $

COMMENT =	core utility library for all LXQt components

VERSION =	0.13.0

NAME =		liblxqt
DISTNAME =	${NAME}-${VERSION}

SHARED_LIBS +=  lxqt                      0.0 # 0.13

WANTLIB += ${COMPILER_LIBCXX} KF5WindowSystem Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Widgets Qt5X11Extras Qt5Xml X11 Xss c m
WANTLIB += Qt5Svg Qt5Xdg Qt5XdgIconLoader

LIB_DEPENDS +=		x11/qt5/qtx11extras \
			devel/kf5/kwindowsystem \
			x11/lxqt/libqtxdg

BUILD_DEPENDS +=	x11/lxqt/build-tools \
			x11/polkit-qt,qt5

RUN_DEPENDS +=		x11/lxqt/l10n,-main

CONFIGURE_ARGS +=	-DPULL_TRANSLATIONS:BOOL=OFF

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}/xdg
	mv ${PREFIX}/share/lxqt ${PREFIX}/share/examples/${NAME}/xdg/

.include <bsd.port.mk>

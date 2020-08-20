# $OpenBSD: Makefile,v 1.4 2020/08/20 16:40:47 rsadowski Exp $

COMMENT =	desktop panel for LXQt

VERSION =	0.13.0

NAME =		lxqt-panel
DISTNAME =	${NAME}-${VERSION}
REVISION =	2

WANTLIB += ${COMPILER_LIBCXX} ICE KF5Solid KF5WindowSystem Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Svg Qt5Widgets Qt5X11Extras Qt5Xdg
WANTLIB += Qt5XdgIconLoader Qt5Xml SM X11 Xcomposite Xdamage Xext
WANTLIB += Xfixes Xrender c dbusmenu-qt5 lxqt m statgrab
WANTLIB += xcb xcb-damage xcb-util xcb-xkb xkbcommon xkbcommon-x11
WANTLIB += lxqt-globalkeys lxqt-globalkeys-ui sysstat-qt5

LIB_DEPENDS +=		x11/lxqt/liblxqt \
			x11/lxqt/globalkeys \
			x11/lxqt/libsysstat \
			sysutils/libstatgrab \
			devel/kf5/solid \
			x11/dbusmenu-qt

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		x11/lxqt/l10n,-panel

CONFIGURE_ARGS +=	-DSENSORS_PLUGIN=No \
			-DVOLUME_PLUGIN=No \
			-DPULL_TRANSLATIONS:BOOL=OFF

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/${NAME}/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}/xdg/lxqt/
	mv ${PREFIX}/share/lxqt/panel.conf \
		${PREFIX}/share/examples/${NAME}/xdg/lxqt/panel.conf

.include <bsd.port.mk>

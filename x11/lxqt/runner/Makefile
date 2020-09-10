# $OpenBSD: Makefile,v 1.5 2020/09/10 13:32:38 mariani Exp $

COMMENT =	launch programs quickly by typing their names

VERSION =	0.15.0
REVISION =      0

NAME =		lxqt-runner
DISTNAME =	${NAME}-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} KF5WindowSystem Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Svg Qt5Widgets Qt5X11Extras Qt5Xdg Qt5XdgIconLoader
WANTLIB += Qt5Xml c gio-2.0 glib-2.0 gobject-2.0 lxqt lxqt-globalkeys
WANTLIB += lxqt-globalkeys-ui m muparser

LIB_DEPENDS +=		x11/lxqt/globalkeys \
			devel/kf5/kwindowsystem \
			math/muparser

BUILD_DEPENDS +=	x11/lxqt/build-tools \
			x11/menu-cache

RUN_DEPENDS +=		x11/menu-cache

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/${NAME}/

.include <bsd.port.mk>

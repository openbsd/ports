# $OpenBSD: Makefile,v 1.5 2020/09/10 13:32:38 mariani Exp $

COMMENT =	session manager for LXQt

VERSION =	0.15.0
REVISION =      0

NAME =		lxqt-session
DISTNAME =	${NAME}-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} ICE KF5WindowSystem Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Svg Qt5Widgets Qt5X11Extras Qt5Xdg Qt5XdgIconLoader
WANTLIB += Qt5Xml SM X11 Xext c gio-2.0 glib-2.0 gobject-2.0 lxqt
WANTLIB += m

LIB_DEPENDS +=		x11/lxqt/liblxqt

BUILD_DEPENDS +=	x11/lxqt/build-tools \
			devel/xdg-user-dirs

RUN_DEPENDS +=		devel/xdg-user-dirs \
			devel/desktop-file-utils \
			x11/xscreensaver \
			devel/kf5/oxygen-icons

CONFIGURE_ARGS +=	-DWITH_LIBUDEV=No

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lxqt-config-session/autostartedit.cpp \
		${WRKSRC}/lxqt-config-session/sessionconfigwindow.cpp \
		${WRKSRC}/lxqt-session/src/wmselectdialog.cpp \
		${WRKSRC}/CMakeLists.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/${NAME}/
	mv ${PREFIX}/share/lxqt/ ${PREFIX}/share/examples/${NAME}/xdg/

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.2 2019/03/08 20:00:48 cwen Exp $

COMMENT =	session manager for LXQt

VERSION =	0.13.0

NAME =		lxqt-session
DISTNAME =	${NAME}-${VERSION}
REVISION =	0

WANTLIB += ${COMPILER_LIBCXX} ICE KF5WindowSystem Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Svg Qt5Widgets Qt5X11Extras Qt5Xdg Qt5XdgIconLoader
WANTLIB += Qt5Xml SM X11 Xext c lxqt m

LIB_DEPENDS +=		x11/lxqt/liblxqt

BUILD_DEPENDS +=	x11/lxqt/build-tools \
			devel/xdg-user-dirs

RUN_DEPENDS +=		devel/xdg-user-dirs \
			devel/desktop-file-utils \
			x11/xscreensaver \
			devel/kf5/oxygen-icons \
			x11/lxqt/l10n,-session

CONFIGURE_ARGS +=	-DWITH_LIBUDEV=No \
			-DPULL_TRANSLATIONS:BOOL=OFF

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lxqt-config-session/autostartedit.cpp \
		${WRKSRC}/lxqt-config-session/sessionconfigwindow.cpp \
		${WRKSRC}/lxqt-session/src/wmselectdialog.cpp

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/${NAME}/
	mv ${PREFIX}/share/lxqt/ ${PREFIX}/share/examples/${NAME}/xdg/

.include <bsd.port.mk>

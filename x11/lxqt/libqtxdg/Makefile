COMMENT =	qt implementation of freedesktop.org xdg specs

VERSION =	4.0.0

NAME =		libqtxdg

SHARED_LIBS +=  Qt6Xdg                    0.0 # 3.8
SHARED_LIBS +=  Qt6XdgIconLoader          0.0 # 3.8

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui Qt6Svg
WANTLIB += Qt6Widgets Qt6Xml gio-2.0 glib-2.0 gobject-2.0 m

LIB_DEPENDS =		x11/qt6/qtsvg

BUILD_DEPENDS =		x11/lxqt/build-tools2

XDG_PATH =		${PREFIX}/share/examples/${PKGNAME:C/-[0-9].*//}/xdg/
CONFIGURE_ARGS +=	-DQTXDG_DEFAPPS_CONF_INSTALL_DIR:PATH=${XDG_PATH}

SUBST_VARS = VERSION

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/qtxdg/xdgdirs.cpp \
		${WRKSRC}/src/xdgiconloader/xdgiconloader.cpp \
		${WRKSRC}/test/tst_xdgdirs.cpp

.include <bsd.port.mk>

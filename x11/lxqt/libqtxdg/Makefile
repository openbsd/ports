COMMENT =	qt implementation of freedesktop.org xdg specs

VERSION =	3.8.0

NAME =		libqtxdg

SHARED_LIBS +=  Qt5Xdg                    0.1 # 3.8
SHARED_LIBS +=  Qt5XdgIconLoader          0.0 # 3.8

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Svg Qt5Widgets
WANTLIB += Qt5Xml c gio-2.0 glib-2.0 gobject-2.0 m

LIB_DEPENDS +=		x11/qt5/qtsvg
BUILD_DEPENDS +=	x11/lxqt/build-tools

CONFIGURE_ARGS +=	-DBUILD_TESTS=Yes

NO_TEST =		No

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/qtxdg/xdgdirs.cpp \
		${WRKSRC}/src/xdgiconloader/xdgiconloader.cpp \
		${WRKSRC}/test/tst_xdgdirs.cpp

.include <bsd.port.mk>

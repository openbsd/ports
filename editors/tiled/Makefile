COMMENT =		tile map editor

# newer versions remove the qmake build system, requiring a switch to qbs.
GH_ACCOUNT =		bjorn
GH_PROJECT =		tiled
GH_TAGNAME =		v1.8.6

SHARED_LIBS +=		tiled                     1.0 # 1.0

CATEGORIES =		editors games

HOMEPAGE =		https://www.mapeditor.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB} GL c m z
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5Widgets

# if necessary (i.e. failure to build after updating), the Python plugin
# can be disabled with MODQMAKE_ARGS= DISABLE_PYTHON_PLUGIN=yes.
# it's disabled by default in preferences anyway and not required for
# typical use of tiled.
# https://doc.mapeditor.org/en/stable/manual/python/
MODULES =		devel/qmake \
			lang/python \
			x11/qt5

LIB_DEPENDS =		x11/qt5/qtdeclarative

BUILD_DEPENDS =		x11/qt5/qtquickcontrols

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+4,-guic \
			x11/qt5/qtquickcontrols

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tiled
	cp -r ${WRKSRC}/examples/* ${PREFIX}/share/examples/tiled/

.include <bsd.port.mk>

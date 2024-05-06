COMMENT =	Qt5 GUI front-end for neovim

GH_ACCOUNT = equalsraf
GH_PROJECT = neovim-qt
GH_TAGNAME = v0.2.18
REVISION = 1

CATEGORIES = editors

HOMEPAGE = https://github.com/equalsraf/neovim-qt/wiki

MAINTAINER = Laurence Tratt <laurie@tratt.net>

# ISC
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5Svg
WANTLIB += Qt5Widgets c m msgpack-c

MODULES =	devel/cmake \
		lang/python \
		x11/qt5

MODPY_RUNDEP =	Yes

BUILD_DEPENDS =	editors/neovim

LIB_DEPENDS =	devel/msgpack \
		x11/qt5/qtsvg

RUN_DEPENDS =	devel/desktop-file-utils \
		editors/neovim \
		x11/gtk+4,-guic \
		x11/xclip

CONFIGURE_ARGS =	-DUSE_SYSTEM_MSGPACK=On \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=On
CONFIGURE_ENV =		QT_DIR=${LOCALBASE}/lib/qt5/cmake/Qt5/

TEST_IS_INTERACTIVE = X11

.include <bsd.port.mk>

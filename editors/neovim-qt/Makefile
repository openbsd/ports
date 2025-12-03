COMMENT =	Qt5 GUI front-end for neovim

GH_ACCOUNT = equalsraf
GH_PROJECT = neovim-qt
GH_TAGNAME = v0.2.19
REVISION = 0

CATEGORIES = editors

HOMEPAGE = https://github.com/equalsraf/neovim-qt/wiki

MAINTAINER = Laurence Tratt <laurie@tratt.net>

# ISC
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6Svg
WANTLIB += Qt6SvgWidgets Qt6Widgets c m msgpack-c

# needs c++ and python
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c c++

MODULES =	devel/cmake \
		lang/python \
		x11/qt6

MODPY_RUNDEP =	Yes

BUILD_DEPENDS =	editors/neovim

LIB_DEPENDS =	devel/msgpack \
		x11/qt6/qtsvg

RUN_DEPENDS =	devel/desktop-file-utils \
		editors/neovim \
		x11/gtk+4,-guic \
		x11/xclip

CONFIGURE_ARGS =	-DWITH_QT=Qt6\
			-DUSE_SYSTEM_MSGPACK=On \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=On

TEST_IS_INTERACTIVE = X11

.include <bsd.port.mk>

COMMENT =	modern & fast Terminal Emulator

V =		0.6.1.7494
DISTNAME =	contour-${V}

GH_ACCOUNT =	contour-terminal
GH_PROJECT =	contour
GH_TAGNAME =	v${V}

CATEGORIES =	x11

MAINTAINER =	SASANO Takayoshi <uaa@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} c fontconfig freetype m util xcb \
			unicode unicode_ucd harfbuzz yaml-cpp ssl ssh2 crypto \
			Qt5Core Qt5Gui Qt5Multimedia Qt5Network Qt5Qml \
			Qt5QmlModels Qt5Quick Qt5QuickControls2 Qt5Widgets \
			Qt5X11Extras

# C++20
COMPILER =		base-clang

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/boxed-cpp \
			devel/microsoft-gsl \
			devel/range-v3 \
			devel/reflection-cpp \

LIB_DEPENDS =		textproc/libunicode \
			security/libssh2 \
			devel/harfbuzz \
			devel/yaml-cpp \
			x11/qt5/qtbase \
			x11/qt5/qtdeclarative \
			x11/qt5/qtmultimedia \
			x11/qt5/qtquickcontrols2 \
			x11/qt5/qtx11extras

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic \
			x11/qt5/qtgraphicaleffects \
			multimedia/gstreamer1/plugins-good

CONFIGURE_ARGS =	-DQt5_DIR=${LOCALBASE}/lib/qt5/cmake/Qt5 \
			-DCONTOUR_QT_VERSION=5

.include <bsd.port.mk>

COMMENT =	desktop client for Matrix

GH_ACCOUNT =	Nheko-Reborn
GH_PROJECT =	nheko
GH_TAGNAME =	v0.12.0

CATEGORIES=	net

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui Qt6Multimedia
WANTLIB += Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick Qt6QuickControls2
WANTLIB += Qt6Svg Qt6Widgets c cmark coeurl crypto fmt glib-2.0
WANTLIB += gobject-2.0 gstbase-1.0 gstgl-1.0 gstreamer-1.0 gstsdp-1.0
WANTLIB += gstvideo-1.0 gstwebrtc-1.0 intl kdsingleapplication-qt6
WANTLIB += lmdb m matrix_client olm qt6keychain spdlog ssl xkbcommon

MODULES =	devel/cmake \
		x11/qt6

# C++20
COMPILER =	base-clang ports-gcc

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

BUILD_DEPENDS = databases/lmdbxx \
		devel/boost \
		textproc/asciidoc \
		textproc/nlohmann-json

LIB_DEPENDS =	databases/lmdb \
		devel/coeurl>=0.3.0 \
		devel/mtxclient>=0.10.0 \
		devel/olm \
		devel/spdlog \
		multimedia/gstreamer1/core \
		multimedia/gstreamer1/plugins-base \
		security/qtkeychain,qt6 \
		textproc/cmark \
		x11/kdsingleapplication \
		x11/qt6/qtdeclarative \
		x11/qt6/qtmultimedia \
		x11/qt6/qtsvg

# -DCMAKE_DISABLE_FIND_PACKAGE_GIT=ON (or _Git or _git) do not work
CONFIGURE_ARGS +=	-DGIT=OFF
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_PRECOMPILE_HEADERS=ON

.include <bsd.port.mk>

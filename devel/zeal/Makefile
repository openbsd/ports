USE_NOBTCFI =	Yes

COMMENT =	simple offline API documentation browser

V =		0.7.0
DISTNAME =	zeal-${V}

# fix build with Qt6
SITES.qt =		https://github.com/zealdocs/zeal/commit/
PATCHFILES.qt =		9630cc94c155d87295e51b41fbab2bd5798f8229.patch
PATCH_DIST_STRIP =	-p1

CATEGORIES =	devel

HOMEPAGE =	https://zealdocs.org/

MAINTAINER =	Adam Wolk <awolk@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL ICE Qt6Concurrent Qt6Core Qt6Gui
WANTLIB += Qt6Network Qt6OpenGL Qt6PrintSupport Qt6Qml Qt6QmlModels
WANTLIB += Qt6Quick Qt6WebChannel Qt6WebEngineCore Qt6WebEngineWidgets
WANTLIB += Qt6Widgets SM X11 Xext archive c m sqlite3 xcb xcb-keysyms
WANTLIB += xkbcommon

SITES =		https://github.com/zealdocs/zeal/releases/download/v${V}/

EXTRACT_SUFX =	.tar.xz

MODULES =	x11/qt6 devel/cmake

BUILD_DEPENDS =	devel/kf6/extra-cmake-modules

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

LIB_DEPENDS =	archivers/libarchive \
		databases/sqlite3 \
		x11/qt6/qtdeclarative \
		x11/qt6/qtwebengine

CONFIGURE_ARGS =	-DZEAL_RELEASE_BUILD=ON

FIX_CRLF_FILES =	src/libs/registry/*.cpp \
			src/libs/ui/qxtglobalshortcut/*.cpp \
			src/libs/ui/*.cpp

NO_TEST =	Yes

# XXX FIX_CRLF_FILES runs after distpatch, but patch(1) and gpatch(1) won't
# apply PATCHFILES due to wrong line endings
post-extract:
	@cd ${WRKDIST} && perl -i -pe 's/\r$$//' -- \
	    src/libs/registry/docset.cpp \
	    src/libs/registry/docsetmetadata.cpp \
	    src/libs/registry/docsetregistry.cpp \
	    src/libs/ui/docsetsdialog.cpp \
	    src/libs/ui/qxtglobalshortcut/qxtglobalshortcut_x11.cpp

.include <bsd.port.mk>

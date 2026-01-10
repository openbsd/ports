COMMENT =	Qt dock widget framework

V =		2.4.0
DISTNAME =	kddockwidgets-${V}

SHARED_LIBS +=  kddockwidgets-qt6         0.0 # 0.0

CATEGORIES =	x11 devel

HOMEPAGE =	https://github.com/KDAB/KDDockWidgets

SITES =	https://github.com/KDAB/KDDockWidgets/releases/download/v${V}/

# GPL-2.0 / GPL-3.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB += Qt6QuickControls2 Qt6Widgets fmt m spdlog xkbcommon

MODULES =		devel/cmake \
			x11/qt6

BUILD_DEPENDS =		devel/kdbindings

LIB_DEPENDS =		devel/fmt \
			devel/spdlog \
			x11/qt6/qtdeclarative \
			x11/xkbcommon

# Remove install prefix
CONFIGURE_ARGS =	-DKDAB_INSTALL=OFF

WRKDIST =		${WRKDIR}/KDDockWidgets-${V}

.include <bsd.port.mk>

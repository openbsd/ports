QT6NAME =	QtQuickControls2
COMMENT =	Qt Quick Controls 2

SHARED_LIBS +=  Qt6QuickControls2          0.0 # 6.0
SHARED_LIBS +=  Qt6QuickTemplates2         0.0 # 6.0
SHARED_LIBS +=  Qt6QuickControls2Impl      0.0 # 6.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick Qt6Widgets c m

LIB_DEPENDS =	x11/qt6/qtdeclarative>=${VERSION},<${NEXT_VERSION}

.include <bsd.port.mk>

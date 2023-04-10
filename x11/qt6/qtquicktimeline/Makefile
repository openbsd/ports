QT6NAME =	QtQuickTimeline
COMMENT =	Qt6 module for keyframe-based timeline construction.
PKGSPEC =	qt6-qtquicktimeline-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6QuickTimeline          1.0 # 6.5

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick c m xkbcommon

LIB_DEPENDS =	x11/qt6/qtdeclarative \
		x11/xkbcommon

.include <bsd.port.mk>

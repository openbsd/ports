QT6NAME =	QtQuickTimeline
COMMENT =	Qt6 module for keyframe-based timeline construction.
PKGSPEC =	qt6-qtquicktimeline-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6QuickTimeline           2.0 # 6.7
SHARED_LIBS +=	Qt6QuickTimelineBlendTrees 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB += c m xkbcommon

LIB_DEPENDS =	x11/qt6/qtdeclarative \
		x11/xkbcommon

.include <bsd.port.mk>

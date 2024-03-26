QT6NAME =	QtQuickEffectMaker
COMMENT =	Qt6 module for Qt Quick Effect Maker
PKGSPEC =	qt6-qtquickeffectmaker-${QT6_PKGSPEC}

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick Qt6Quick3DGlslParser Qt6ShaderTools
WANTLIB += c m xkbcommon

LIB_DEPENDS =	x11/qt6/qtdeclarative \
		x11/qt6/qtshadertools \
		x11/qt6/qtquick3d \
		x11/xkbcommon

.include <bsd.port.mk>

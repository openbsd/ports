QT6NAME =	Qt5Compat
COMMENT =	Qt6 module contains unsupported Qt 5 APIs
PKGSPEC =	qt6-qt5compat-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6Core5Compat      1.0 # 6.5

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB += Qt6ShaderTools c icudata icui18n icuuc m xkbcommon

LIB_DEPENDS =	x11/qt6/qtdeclarative \
		x11/qt6/qtshadertools \
		textproc/icu4c \
		x11/xkbcommon

.include <bsd.port.mk>

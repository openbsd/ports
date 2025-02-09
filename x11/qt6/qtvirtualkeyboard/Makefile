QT6NAME =	QtVirtualKeyboard
COMMENT =	Qt6 virtual keyboard plugin
PKGSPEC =	qt6-qtvirtualkeyboard-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6HunspellInputMethod     3.0 # 6.7
SHARED_LIBS +=  Qt6VirtualKeyboard         4.0 # 6.7
SHARED_LIBS +=  Qt6VirtualKeyboardSettings 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB += Qt6Svg c hunspell-1.7 m xkbcommon

LIB_DEPENDS =	textproc/hunspell \
		x11/qt6/qtdeclarative \
		x11/qt6/qtsvg \
		x11/xkbcommon

.include <bsd.port.mk>

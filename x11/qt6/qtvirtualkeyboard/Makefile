QT6NAME =	QtVirtualKeyboard
COMMENT =	Qt6 virtual keyboard plugin
PKGSPEC =	qt6-qtvirtualkeyboard-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6HunspellInputMethod     2.0 # 6.6
SHARED_LIBS +=  Qt6VirtualKeyboard         2.2 # 6.6
SHARED_LIBS +=  Qt6VirtualKeyboardSettings 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick Qt6Svg c hunspell-1.7
WANTLIB += m xkbcommon

LIB_DEPENDS =	textproc/hunspell \
		x11/qt6/qtdeclarative \
		x11/qt6/qtsvg \
		x11/xkbcommon

BUILD_DEPENDS =	graphics/vulkan-loader

.include <bsd.port.mk>

QT6NAME =	QtShaderTools
COMMENT =	Qt6 shader tools module
PKGSPEC =	qt6-qtshadertools-${QT6_PKGSPEC}
REVISION =	0

SHARED_LIBS =  Qt6ShaderTools              2.0 # 6.5

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui c m xkbcommon

MODQT6_DEPS =	No

BUILD_DEPENDS =	graphics/vulkan-loader

LIB_DEPENDS =	x11/qt6/qtbase \
		x11/xkbcommon

.include <bsd.port.mk>

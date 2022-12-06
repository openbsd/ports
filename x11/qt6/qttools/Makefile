QT6NAME =	QtTools
COMMENT =	Qt6 development tools
PKGSPEC =	qt6-qttools-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6Designer             0.1 # 6.4
SHARED_LIBS +=  Qt6DesignerComponents   0.0 # 6.4
SHARED_LIBS +=  Qt6Help                 0.0 # 6.4
SHARED_LIBS +=  Qt6UiTools              0.0 # 6.4

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6OpenGLWidgets Qt6PrintSupport Qt6Qml Qt6QmlModels
WANTLIB += Qt6Quick Qt6QuickWidgets Qt6Sql Qt6Widgets Qt6Xml c
WANTLIB += clang clang-cpp m xkbcommon

LIB_DEPENDS =	x11/qt6/qtdeclarative \
		x11/xkbcommon \
		devel/llvm

BUILD_DEPENDS =	graphics/vulkan-loader

CONFIGURE_ENV =	LLVM_INSTALL_DIR=${LOCALBASE}

.include <bsd.port.mk>

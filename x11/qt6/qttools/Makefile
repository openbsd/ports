QT6NAME =	QtTools
COMMENT =	Qt6 development tools
PKGSPEC =	qt6-qttools-${QT6_PKGSPEC}
REVISION =	0

SHARED_LIBS +=  Qt6Designer             2.1 # 6.6
SHARED_LIBS +=  Qt6DesignerComponents   1.0 # 6.6
SHARED_LIBS +=  Qt6Help                 1.0 # 6.6
SHARED_LIBS +=  Qt6UiTools              1.0 # 6.6

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6OpenGLWidgets Qt6PrintSupport Qt6Qml Qt6QmlModels
WANTLIB += Qt6Quick Qt6QuickWidgets Qt6Sql Qt6Widgets Qt6Xml c
WANTLIB += m xkbcommon zstd

WANTLIB += llvm${MODCLANG_VERSION}/lib/clang
WANTLIB += llvm${MODCLANG_VERSION}/lib/clang-cpp

# avoid BDEP on ourselves
MODQT6_DEPS =	No

MODULES +=			lang/clang
MODCLANG_COMPILER_LINKS =	No
MODCLANG_BUILDDEP =		No
MODCLANG_RUNDEP =		No

LIB_DEPENDS =	${MODCLANG_LIB_DEPENDS} \
		archivers/zstd \
		x11/qt6/qtbase \
		x11/qt6/qtdeclarative \
		x11/xkbcommon

BUILD_DEPENDS =	graphics/vulkan-loader

CONFIGURE_ENV =	LLVM_INSTALL_DIR=${LOCALBASE}/llvm${MODCLANG_VERSION}
MODCMAKE_LDFLAGS = -L${LOCALBASE}/llvm${MODCLANG_VERSION}/lib -Wl,-rpath=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib

.include <bsd.port.mk>

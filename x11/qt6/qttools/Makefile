QT6NAME =	QtTools
COMMENT =	Qt6 development tools
PKGSPEC =	qt6-qttools-${QT6_PKGSPEC}
REVISION =	1

SHARED_LIBS +=  Qt6Designer             3.1 # 6.7
SHARED_LIBS +=  Qt6DesignerComponents   2.0 # 6.7
SHARED_LIBS +=  Qt6Help                 2.0 # 6.7
SHARED_LIBS +=  Qt6UiTools              2.0 # 6.7

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6OpenGLWidgets Qt6PrintSupport Qt6Qml Qt6QmlCompiler
WANTLIB += Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB += Qt6QuickWidgets Qt6Sql Qt6Widgets Qt6Xml c m xkbcommon
WANTLIB += zstd

WANTLIB += llvm${MODCLANG_VERSION}/lib/clang
WANTLIB += llvm${MODCLANG_VERSION}/lib/clang-cpp

# avoid BDEP on ourselves
MODQT6_DEPS =	No

MODULES +=			lang/clang
MODCLANG_VERSION =		18
MODCLANG_COMPILER_LINKS =	Yes
MODCLANG_BUILDDEP =		No
MODCLANG_RUNDEP =		No

BUILD_DEPENDS =	graphics/vulkan-loader

LIB_DEPENDS =	${MODCLANG_LIB_DEPENDS} \
		archivers/zstd \
		x11/qt6/qtbase \
		x11/qt6/qtdeclarative \
		x11/xkbcommon

CONFIGURE_ENV =	LLVM_INSTALL_DIR=${LOCALBASE}/llvm${MODCLANG_VERSION}
MODCMAKE_LDFLAGS = -L${LOCALBASE}/llvm${MODCLANG_VERSION}/lib -Wl,-rpath=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib

.include <bsd.port.mk>

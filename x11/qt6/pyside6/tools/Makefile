COMMENT =	PySide6 development tools
PKGNAME =	pyside6-tools-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6Designer
WANTLIB += Qt6DesignerComponents Qt6Gui Qt6Help Qt6JsonRpc Qt6LanguageServer
WANTLIB += Qt6Network Qt6OpenGL Qt6OpenGLWidgets Qt6PrintSupport
WANTLIB += Qt6Qml Qt6QmlCompiler Qt6QmlModels Qt6Quick Qt6Quick3DAssetImport
WANTLIB += Qt6Quick3DIblBaker Qt6Quick3DRuntimeRender Qt6Quick3DUtils
WANTLIB += Qt6ShaderTools Qt6Sql Qt6UiTools Qt6Widgets Qt6Xml
WANTLIB += c execinfo m xkbcommon zstd

WANTLIB += llvm${MODCLANG_VERSION}/lib/clang

MODULES +=	lang/clang \
		lang/python

LIB_DEPENDS =	archivers/zstd \
		x11/qt6/qtquick3d \
		x11/qt6/qtdeclarative \
		x11/qt6/qtlanguageserver \
		x11/qt6/qttools \
		x11/xkbcommon

LIB_DEPENDS +=	${MODCLANG_LIB_DEPENDS}

WRKSRC =	${WRKDIST}/sources/pyside-tools
NO_BUILD = 	yes

CONFIGURE_ARGS +=	-DNUMPY_INCLUDE_DIR:PATH="${MODPY_SITEPKG}/numpy/core/include/"

CONFIGURE_ENV =		LLVM_INSTALL_DIR=${LOCALBASE}/llvm${MODCLANG_VERSION}

.include <bsd.port.mk>

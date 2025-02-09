COMMENT =		PySide6 development tools
PKGNAME =		pyside6-tools-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6Designer
WANTLIB += Qt6DesignerComponents Qt6Gui Qt6Help Qt6Network Qt6OpenGL
WANTLIB += Qt6OpenGLWidgets Qt6PrintSupport Qt6Qml Qt6QmlCompiler
WANTLIB += Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB += Qt6Quick3DAssetImport Qt6Quick3DIblBaker Qt6Quick3DRuntimeRender
WANTLIB += Qt6Quick3DUtils Qt6QuickVectorImageGenerator Qt6ShaderTools
WANTLIB += Qt6Sql Qt6UiTools Qt6Widgets Qt6Xml c execinfo m xkbcommon
WANTLIB += zstd

WANTLIB += llvm${MODCLANG_VERSION}/lib/clang

MODULES +=		lang/clang \
			lang/python

LIB_DEPENDS =		archivers/zstd \
			x11/qt6/qtquick3d \
			x11/qt6/qtdeclarative \
			x11/qt6/qtshadertools \
			x11/qt6/qttools \
			x11/xkbcommon

LIB_DEPENDS +=		${MODCLANG_LIB_DEPENDS}

WRKSRC =		${WRKDIST}/sources/pyside-tools
NO_BUILD =		yes

CONFIGURE_ARGS +=	-DNUMPY_INCLUDE_DIR:PATH="${MODPY_SITEPKG}/numpy/core/include/"

CONFIGURE_ENV =		LLVM_INSTALL_DIR=${LOCALBASE}/llvm${MODCLANG_VERSION}

.include <bsd.port.mk>

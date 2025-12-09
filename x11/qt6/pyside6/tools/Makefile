COMMENT =		PySide6 development tools
PKGNAME =		pyside6-tools-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6Designer
WANTLIB += Qt6DesignerComponents Qt6Gui Qt6Help Qt6Network Qt6OpenGL
WANTLIB += Qt6OpenGLWidgets Qt6PrintSupport Qt6Qml Qt6QmlCompiler
WANTLIB += Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB += Qt6Quick3DAssetImport Qt6Quick3DIblBaker Qt6Quick3DRuntimeRender
WANTLIB += Qt6Quick3DUtils Qt6QuickLayouts Qt6QuickVectorImageGenerator
WANTLIB += Qt6QuickWidgets Qt6ShaderTools Qt6Sql Qt6UiTools Qt6Widgets
WANTLIB += Qt6Xml c execinfo m xkbcommon zstd

MODULES +=		lang/python

LIB_DEPENDS =		archivers/zstd \
			x11/qt6/qtquick3d \
			x11/qt6/qtdeclarative \
			x11/qt6/qtshadertools \
			x11/qt6/qttools \
			x11/xkbcommon

LIB_DEPENDS +=		${MODCLANG_LIB_DEPENDS}

WRKSRC =		${WRKDIST}/sources/pyside-tools
NO_BUILD =		yes

.include <bsd.port.mk>

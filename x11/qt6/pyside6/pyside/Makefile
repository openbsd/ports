DPB_PROPERTIES =	parallel

COMMENT =		Python Qt bindings for Qt 6
PKGNAME =		pyside6-${VERSION}

SHARED_LIBS +=		pyside6.abi3		3.0 # 0.0
SHARED_LIBS +=		pyside6qml.abi3		2.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt63DAnimation Qt63DCore Qt63DExtras
WANTLIB += Qt63DInput Qt63DLogic Qt63DRender Qt6Bluetooth Qt6Charts
WANTLIB += Qt6Concurrent Qt6Core Qt6DBus Qt6DataVisualization
WANTLIB += Qt6Designer Qt6Graphs Qt6GraphsWidgets Qt6Gui Qt6Help
WANTLIB += Qt6HttpServer Qt6LabsStyleKit Qt6Location Qt6Multimedia
WANTLIB += Qt6MultimediaWidgets Qt6Network Qt6NetworkAuth Qt6Nfc
WANTLIB += Qt6OpenGL Qt6OpenGLWidgets Qt6Pdf Qt6PdfWidgets Qt6Positioning
WANTLIB += Qt6PositioningQuick Qt6PrintSupport Qt6Qml Qt6Quick
WANTLIB += Qt6Quick3D Qt6Quick3DRuntimeRender Qt6Quick3DUtils
WANTLIB += Qt6QuickControls2 Qt6QuickTest Qt6QuickWidgets Qt6RemoteObjects
WANTLIB += Qt6Scxml Qt6Sensors Qt6SerialBus Qt6SerialPort Qt6ShaderTools
WANTLIB += Qt6SpatialAudio Qt6Sql Qt6StateMachine Qt6Svg Qt6SvgWidgets
WANTLIB += Qt6Test Qt6TextToSpeech Qt6UiTools Qt6WebChannel Qt6WebChannelQuick
WANTLIB += Qt6WebEngineCore Qt6WebEngineQuick Qt6WebEngineWidgets
WANTLIB += Qt6WebSockets Qt6WebView Qt6Widgets Qt6Xml m shiboken6.abi3
WANTLIB += xkbcommon

MODULES +=		lang/clang \
			lang/python
MODCLANG_VERSION =	22

BUILD_DEPENDS =		devel/llvm/${MODCLANG_VERSION} \
			graphics/shaderc \
			graphics/vulkan-headers \
			x11/qt6/qttools

LIB_DEPENDS =		x11/qt6/pyside6/shiboken \
			x11/qt6/qt3d \
			x11/qt6/qtbase \
			x11/qt6/qtcharts \
			x11/qt6/qtconnectivity \
			x11/qt6/qtdatavis3d \
			x11/qt6/qtdeclarative \
			x11/qt6/qtgraphs \
			x11/qt6/qthttpserver \
			x11/qt6/qtlocation \
			x11/qt6/qtmultimedia \
			x11/qt6/qtnetworkauth \
			x11/qt6/qtpositioning \
			x11/qt6/qtquick3d \
			x11/qt6/qtremoteobjects \
			x11/qt6/qtscxml \
			x11/qt6/qtsensors \
			x11/qt6/qtserialbus \
			x11/qt6/qtserialport \
			x11/qt6/qtshadertools \
			x11/qt6/qtspeech \
			x11/qt6/qtsvg \
			x11/qt6/qttools \
			x11/qt6/qtwebchannel \
			x11/qt6/qtwebengine \
			x11/qt6/qtwebsockets \
			x11/qt6/qtwebview \
			x11/xkbcommon

RUN_DEPENDS =		graphics/vulkan-headers

CONFIGURE_ARGS +=	-DBUILD_TESTS=ON \
			-DBUILD_DOCS=OFF \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON

CONFIGURE_ARGS +=	-DClang_DIR="${LOCALBASE}/llvm${MODCLANG_VERSION}/lib/cmake/clang"
CONFIGURE_ENV =		LLVM_INSTALL_DIR=${LOCALBASE}/llvm${MODCLANG_VERSION}

WRKSRC =		${WRKDIST}/sources/pyside6

PORTHOME =		${WRKBUILD}

TEST_IS_INTERACTIVE =	X11
TEST_DEPENDS =		${BUILD_PKGPATH}
TEST_ENV +=		PYTHONPATH=${WRKBUILD}/tests/pysidetest

post-patch:
	${SUBST_CMD} ${WRKSRC}/cmake/Macros/PySideModules.cmake \
		${WRKSRC}/libpyside/PySide6Config-spec.cmake.in

post-install:
	${MODPY_COMPILEALL} ${WRKINST}${MODPY_SITEPKG}/PySide6{,/support}/

.include <bsd.port.mk>

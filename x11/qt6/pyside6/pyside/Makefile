COMMENT =	Python Qt bindings for Qt 6
PKGNAME =	pyside6-${VERSION}
REVISION =	0

SHARED_LIBS +=  pyside6${MODPY_ABI3SO}              0.0 # 0.0
SHARED_LIBS +=  pyside6qml${MODPY_ABI3SO}           0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt63DAnimation Qt63DCore Qt63DExtras
WANTLIB += Qt63DInput Qt63DLogic Qt63DRender Qt6Bluetooth Qt6Charts
WANTLIB += Qt6Concurrent Qt6Core Qt6DBus Qt6DataVisualization
WANTLIB += Qt6Designer Qt6Graphs Qt6Gui Qt6Help Qt6HttpServer
WANTLIB += Qt6Location Qt6Multimedia Qt6MultimediaWidgets Qt6Network
WANTLIB += Qt6NetworkAuth Qt6Nfc Qt6OpenGL Qt6OpenGLWidgets Qt6Pdf
WANTLIB += Qt6PdfWidgets Qt6Positioning Qt6PositioningQuick Qt6PrintSupport
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick Qt6Quick3D Qt6Quick3DRuntimeRender
WANTLIB += Qt6Quick3DUtils Qt6QuickControls2 Qt6QuickShapes Qt6QuickTest
WANTLIB += Qt6QuickWidgets Qt6RemoteObjects Qt6Scxml Qt6Sensors
WANTLIB += Qt6SerialBus Qt6SerialPort Qt6ShaderTools Qt6SpatialAudio
WANTLIB += Qt6Sql Qt6StateMachine Qt6Svg Qt6SvgWidgets Qt6Test
WANTLIB += Qt6TextToSpeech Qt6UiTools Qt6WebChannel Qt6WebChannelQuick
WANTLIB += Qt6WebEngineCore Qt6WebEngineQuick Qt6WebEngineWidgets
WANTLIB += Qt6WebSockets Qt6Widgets Qt6Xml c m shiboken6.abi3
WANTLIB += xkbcommon

MODULES +=	lang/python

LIB_DEPENDS =	x11/qt6/pyside6/shiboken \
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
		x11/qt6/qtwebsockets

RUN_DEPENDS =		graphics/vulkan-headers

WRKSRC =		${WRKDIST}/sources/pyside6

TEST_IS_INTERACTIVE =	X11
TEST_DEPENDS =		${BUILD_PKGPATH}

post-patch:
	${SUBST_CMD} \
		${WRKSRC}/cmake/Macros/PySideModules.cmake

post-install:
	${MODPY_COMPILEALL} \
		${WRKINST}${MODPY_SITEPKG}/PySide6{,/support}/

.include <bsd.port.mk>

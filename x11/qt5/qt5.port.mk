# $OpenBSD: qt5.port.mk,v 1.29 2021/11/12 13:40:49 rsadowski Exp $

# This fragment defines MODQT_* variables to make it easier to substitute
# qt3/qt4/qt5 in a port.
MODQT_OVERRIDE_UIC ?=	Yes
MODQT5_OVERRIDE_UIC ?=	${MODQT_OVERRIDE_UIC}

MODQT5_LIBDIR =	${LOCALBASE}/lib/qt5
MODQT_LIBDIR ?= ${MODQT5_LIBDIR}
MODQT5_INCDIR =	${LOCALBASE}/include/X11/qt5
MODQT_INCDIR ?= ${MODQT5_INCDIR}
MODQT5_CONFIGURE_ARGS =	--with-qt-includes=${MODQT5_INCDIR} \
			--with-qt-libraries=${MODQT5_LIBDIR}
MODQT_CONFIGURE_ARGS ?=	${MODQT5_CONFIGURE_ARGS}
_MODQT5_SETUP =	MOC=${MODQT5_MOC} \
		MODQT_INCDIR=${MODQT5_INCDIR} \
		MODQT_LIBDIR=${MODQT5_LIBDIR}
.if ${MODQT5_OVERRIDE_UIC:L} == "yes"
_MODQT5_SETUP +=UIC=${MODQT5_UIC}
.endif

# .qmlc and .jsc files cannot be generated on non-x86 archs.
MODQT5_COMMENT = "@comment "
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386" 
MODQT5_COMMENT = 
.endif

# may be needed to find plugins
MODQT5_MOC =	${LOCALBASE}/bin/moc-qt5
MODQT_MOC ?=	${MODQT5_MOC}
MODQT5_UIC =	${LOCALBASE}/bin/uic-qt5
MODQT_UIC ?=	${MODQT5_UIC}
MODQT5_QMAKE =	${LOCALBASE}/bin/qmake-qt5
MODQT_QMAKE ?=	${MODQT5_QMAKE}
MODQT5_QTDIR =	${LOCALBASE}/lib/qt5
MODQT_QTDIR ?=	${MODQT5_QTDIR}
MODQT5_LRELEASE = ${LOCALBASE}/bin/lrelease-qt5
MODQT_LRELEASE ?= ${MODQT5_LRELEASE}
MODQT5_LUPDATE = ${LOCALBASE}/bin/lupdate-qt5
MODQT_LUPDATE ?= ${MODQT5_LUPDATE}

_MODQT5_CMAKE_PKGS = \
	Qt5 \
	Qt53DAnimation \
	Qt53DCore \
	Qt53DExtras \
	Qt53DInput \
	Qt53DLogic \
	Qt53DQuick \
	Qt53DQuickAnimation \
	Qt53DQuickExtras \
	Qt53DQuickInput \
	Qt53DQuickRender \
	Qt53DQuickScene2D \
	Qt53DRender \
	Qt5AccessibilitySupport \
	Qt5AttributionsScannerTools \
	Qt5Bluetooth \
	Qt5Bodymovin \
	Qt5Charts \
	Qt5Concurrent \
	Qt5Core \
	Qt5DBus \
	Qt5DataVisualization \
	Qt5Designer \
	Qt5DesignerComponents \
	Qt5DeviceDiscoverySupport \
	Qt5DocTools \
	Qt5EdidSupport \
	Qt5EglFSDeviceIntegration \
	Qt5EglFsKmsSupport \
	Qt5EglSupport \
	Qt5EventDispatcherSupport \
	Qt5FbSupport \
	Qt5FontDatabaseSupport \
	Qt5Gamepad \
	Qt5GlxSupport \
	Qt5Gui \
	Qt5Help \
	Qt5HunspellInputMethod \
	Qt5InputSupport \
	Qt5KmsSupport \
	Qt5LinguistTools \
	Qt5LinuxAccessibilitySupport \
	Qt5Location \
	Qt5Multimedia \
	Qt5MultimediaGstTools \
	Qt5MultimediaQuick \
	Qt5MultimediaWidgets \
	Qt5Network \
	Qt5NetworkAuth \
	Qt5Nfc \
	Qt5OpenGL \
	Qt5OpenGLExtensions \
	Qt5PacketProtocol \
	Qt5Pdf \
	Qt5PdfWidgets \
	Qt5PlatformCompositorSupport \
	Qt5Positioning \
	Qt5PositioningQuick \
	Qt5PrintSupport \
	Qt5Purchasing \
	Qt5Qml \
	Qt5QmlDebug \
	Qt5QmlDevTools \
	Qt5QmlImportScanner \
	Qt5QmlModels \
	Qt5QmlWorkerScript \
	Qt5Quick \
	Qt5QuickCompiler \
	Qt5QuickControls2 \
	Qt5QuickParticles \
	Qt5QuickShapes \
	Qt5QuickTemplates2 \
	Qt5QuickTest \
	Qt5QuickWidgets \
	Qt5RemoteObjects \
	Qt5RepParser \
	Qt5Script \
	Qt5ScriptTools \
	Qt5Scxml \
	Qt5Sensors \
	Qt5SerialBus \
	Qt5SerialPort \
	Qt5ServiceSupport \
	Qt5Sql \
	Qt5Svg \
	Qt5Test \
	Qt5TextToSpeech \
	Qt5ThemeSupport \
	Qt5UiPlugin \
	Qt5UiTools \
	Qt5VirtualKeyboard \
	Qt5WaylandClient \
	Qt5WaylandCompositor \
	Qt5WebChannel \
	Qt5WebEngine \
	Qt5WebEngineCore \
	Qt5WebEngineWidgets \
	Qt5WebKit \
	Qt5WebKitWidgets \
	Qt5WebSockets \
	Qt5WebView \
	Qt5Widgets \
	Qt5X11Extras \
	Qt5XcbQpa \
	Qt5XkbCommonSupport \
	Qt5Xml \
	Qt5XmlPatterns
.for _p in ${_MODQT5_CMAKE_PKGS}
_MODQT5_SETUP +=	${_p}_DIR=${MODQT5_LIBDIR}/cmake
.endfor

MODQT5_LIB_DEPENDS = 	x11/qt5/qtbase,-main
MODQT_LIB_DEPENDS ?= 	${MODQT5_LIB_DEPENDS}

# qdoc, etc.
MODQT5_BUILD_DEPENDS = 	x11/qt5/qttools,-main
MODQT_BUILD_DEPENDS ?= 	${MODQT5_BUILD_DEPENDS}

MODQT_DEPS ?=		Yes
MODQT5_DEPS ?=		${MODQT_DEPS}
.if ${MODQT5_DEPS:L} == "yes"
LIB_DEPENDS += 		${MODQT5_LIB_DEPENDS}
BUILD_DEPENDS += 	${MODQT5_BUILD_DEPENDS}
.endif

CONFIGURE_ENV +=${_MODQT5_SETUP}
MAKE_ENV +=	${_MODQT5_SETUP}
MAKE_FLAGS +=	${_MODQT5_SETUP}

MODQT5_USE_CXX11 ?=	Yes
.if ${MODQT5_USE_CXX11:L} == "yes"
COMPILER ?= base-clang ports-gcc
ONLY_FOR_ARCHS ?= ${CXX11_ARCHS}
# useful?
_MODQT5_SETUP +=	CC=${CC} CXX=${CXX}
.endif

SUBST_VARS +=	MODQT5_COMMENT

.include "Makefile.version"

MODQT5_VERSION =	${QT5_VERSION}
MODQT_VERSION ?=	${MODQT5_VERSION}

_MODQT5_PKGMATCH !=
show_deps: patch
	@cpkgs=$$(echo ${_MODQT5_CMAKE_PKGS:NQt5} | sed 's/ /|/g'); \
	find ${WRKSRC} \( -name '*.pr[iof]' -o -iname '*cmake*' \) -exec \
		egrep -hA 2 "\\<(qtHaveModule|QT_CONFIG|$$cpkgs)\\>|Qt5::" {} +

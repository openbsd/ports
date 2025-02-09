COMMENT=	Python bindings for Qt6

MODPY_DISTV=	6.8.0
DISTNAME=	PyQt6-${MODPY_DISTV}
PKGNAME=	py-qt6-${MODPY_DISTV}

CATEGORIES=	x11 devel

HOMEPAGE=	https://www.riverbankcomputing.com/software/pyqt/intro

# GPLv3 (or commercial)
# https://www.riverbankcomputing.com/commercial/license-faq
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Bluetooth Qt6Core Qt6DBus
WANTLIB += Qt6Designer Qt6Gui Qt6Help Qt6Multimedia Qt6MultimediaWidgets
WANTLIB += Qt6Network Qt6Nfc Qt6OpenGL Qt6OpenGLWidgets Qt6Pdf
WANTLIB += Qt6PdfWidgets Qt6Positioning Qt6PrintSupport Qt6Qml
WANTLIB += Qt6QmlModels Qt6Quick Qt6Quick3D Qt6Quick3DRuntimeRender
WANTLIB += Qt6Quick3DUtils Qt6QuickWidgets Qt6RemoteObjects Qt6Sensors
WANTLIB += Qt6SerialPort Qt6ShaderTools Qt6SpatialAudio Qt6Sql
WANTLIB += Qt6Svg Qt6SvgWidgets Qt6Test Qt6TextToSpeech Qt6WebChannel
WANTLIB += Qt6WebSockets Qt6Widgets Qt6Xml dbus-1 m ${MODPY_WANTLIB}
WANTLIB += Qt6QmlMeta Qt6QmlWorkerScript

BUILD_DEPENDS=	devel/py-qt-builder>=1.18.0\
		x11/py-sip-qt6>=13.10.0 \
		x11/dbus-python \
		graphics/vulkan-loader

RUN_DEPENDS=	devel/py-sip>=6.10.0v0 \
		x11/py-sip-qt6>=13.10.0 \
		devel/py-ply \
		x11/dbus-python

LIB_DEPENDS=	${MODPY_LIB_DEPENDS} \
		x11/qt6/qtconnectivity \
		x11/qt6/qtdeclarative \
		x11/qt6/qtmultimedia \
		x11/qt6/qtpositioning \
		x11/qt6/qtquick3d \
		x11/qt6/qtremoteobjects \
		x11/qt6/qtserialport \
		x11/qt6/qtsensors \
		x11/qt6/qtspeech \
		x11/qt6/qtsvg \
		x11/qt6/qttools \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine \
		x11/qt6/qtwebsockets

NO_TEST=	Yes

MODULES=	lang/python \
		x11/qt6
MODPY_PI=	Yes

# https://www.riverbankcomputing.com/static/Docs/PyQt6/installation.html#building-pyqt6
CONFIGURE_STYLE= simple
CONFIGURE_SCRIPT= ${LOCALBASE}/bin/sip-build
CONFIGURE_ARGS =	--verbose --confirm-license --pep484-pyi

MAKE_FLAGS=	-C build \
		CC=${CC} \
		CXX=${CXX} \
		COPTS="${CFLAGS}" \
		CXXOPTS="${CXXFLAGS}"

FAKE_FLAGS=	INSTALL_ROOT=${DESTDIR}

post-extract:
	# Needed to run sip-6.5+ sip-build
	ln -sf ${MODQT6_QMAKE} ${WRKDIR}/bin/qmake

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
	    ${WRKINST}/${MODPY_SITEPKG}/PyQt6/uic/port_v3

.include <bsd.port.mk>

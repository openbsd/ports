# $OpenBSD: Makefile,v 1.17 2019/07/12 20:51:20 sthen Exp $

COMMENT	=	python Qt5 bindings

V=		5.9
DISTNAME=	PyQt5_gpl-${V}
PKGNAME=	py-qt5-${V}
REVISION =	4

CATEGORIES=	x11 devel

HOMEPAGE=	http://www.riverbankcomputing.co.uk/software/pyqt/intro
MAINTAINER=	KDE porting team <openbsd-kde@googlegroups.com>

# GPLv3 with exceptions for use with certain named open-source licenses
PERMIT_PACKAGE=	Yes

WANTLIB =  ${COMPILER_LIBCXX} ${MODPY_WANTLIB}
WANTLIB += dbus-1 glib-2.0 intl m pthread pulse pulse-mainloop-glib
WANTLIB += GL Qt5Bluetooth Qt5Core Qt5DBus Qt5Designer
WANTLIB += Qt5Gui Qt5Help Qt5Multimedia Qt5MultimediaWidgets Qt5Network
WANTLIB += Qt5OpenGL Qt5Positioning Qt5PrintSupport Qt5Qml Qt5Quick
WANTLIB += Qt5QuickWidgets Qt5Sensors Qt5SerialPort Qt5Sql Qt5Svg
WANTLIB += Qt5Test Qt5WebChannel Qt5WebKit Qt5WebKitWidgets Qt5WebSockets
WANTLIB += Qt5Widgets Qt5X11Extras Qt5Xml Qt5XmlPatterns
WANTLIB += Qt5Location Qt5Nfc

FLAVORS =	python3
FLAVOR ?=

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/py-sip${MODPY_FLAVOR}>=4.19.1 \
		x11/dbus-python${MODPY_FLAVOR}
LIB_DEPENDS=	${MODPY_LIB_DEPENDS} \
		x11/qt5/qtconnectivity \
		x11/qt5/qtdeclarative \
		x11/qt5/qtlocation \
		x11/qt5/qtmultimedia \
		x11/qt5/qtserialport \
		x11/qt5/qtsensors \
		x11/qt5/qtsvg \
		x11/qt5/qttools \
		x11/qt5/qtwebchannel \
		x11/qt5/qtwebkit \
		x11/qt5/qtwebsockets \
		x11/qt5/qtx11extras \
		x11/qt5/qtxmlpatterns

NO_TEST=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pyqt/}

MODULES=	lang/python \
		x11/qt5

CONFIGURE_STYLE=simple
CONFIGURE_SCRIPT=${MODPY_BIN} configure.py
CONFIGURE_ARGS=	--verbose \
		--qmake="${LOCALBASE}/bin/qmake-qt5" \
		--sip="${LOCALBASE}/bin/sip${MODPY_BIN_SUFFIX}" \
		--bindir="${PREFIX}/bin" \
		--destdir="${MODPY_SITEPKG}" \
		--sipdir="${PREFIX}/share/sip/PyQt5${MODPY_BIN_SUFFIX}" \
		--vendorid-incdir="${MODPY_INCDIR}" \
		--vendorid-libdir="${MODPY_LIBDIR}" \
		--no-qsci-api \
		INCDIR_QT=${MODQT_INCDIR} \
		LIBDIR="${X11BASE}/lib ${LOCALBASE}/lib" \
		LIBDIR_QT=${MODQT_LIBDIR} \
		CC=${CC} \
		CXX=${CXX} \
		CFLAGS="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS}"
FAKE_FLAGS=	INSTALL_ROOT=${DESTDIR}
CONFIGURE_ENV=	LOCALBASE=${LOCALBASE}

SUBST_VARS +=	MODPY_MAJOR_VERSION

# the distfile has pyuic for both python 2 and 3, normally both are
# installed and they're selected at runtime. this breaks bytecode
# compilation for package generation, so just rm the wrong files.
pre-configure:
.if ${FLAVOR:Mpython3}
	rm -fr ${WRKSRC}/pyuic/uic/port_v2
.else
	rm -fr ${WRKSRC}/pyuic/uic/port_v3
.endif

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKINST}/${MODPY_SITEPKG}
.for b in pylupdate pyrcc pyuic
	mv -f ${PREFIX}/bin/$b5 ${PREFIX}/bin/$b5${MODPY_BIN_SUFFIX}
.endfor
	mv -f ${PREFIX}/lib/qt5/plugins/PyQt5/libpyqt5qmlplugin{,${MODPY_BIN_SUFFIX}}.so
	mv -f ${PREFIX}/lib/qt5/plugins/designer/libpyqt5{,${MODPY_BIN_SUFFIX}}.so

.include <bsd.port.mk>

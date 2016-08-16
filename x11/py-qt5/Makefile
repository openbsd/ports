# $OpenBSD: Makefile,v 1.4 2016/08/16 06:44:39 jasper Exp $

COMMENT-main=	python Qt5 bindings
COMMENT-docs=	py-qt5 documentation

V=		5.5.1
DISTNAME=	PyQt-gpl-${V}
PKGNAME=	py-qt5-${V}
PKGNAME-main=	py-qt5-${V}
PKGNAME-docs=	py-qt5-docs-${V}
REVISION-main=	1

CATEGORIES=	x11 devel

HOMEPAGE=	http://www.riverbankcomputing.co.uk/software/pyqt/intro

# GPLv3 with exceptions for use with certain named open-source licenses
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB} c dbus-1 m pthread
WANTLIB += Enginio GL Qt5Bluetooth Qt5Core Qt5DBus Qt5Designer
WANTLIB += Qt5Gui Qt5Help Qt5Multimedia Qt5MultimediaWidgets Qt5Network
WANTLIB += Qt5OpenGL Qt5Positioning Qt5PrintSupport Qt5Qml Qt5Quick
WANTLIB += Qt5QuickWidgets Qt5Sensors Qt5SerialPort Qt5Sql Qt5Svg
WANTLIB += Qt5Test Qt5WebChannel Qt5WebKit Qt5WebKitWidgets Qt5WebSockets
WANTLIB += Qt5Widgets Qt5X11Extras Qt5Xml Qt5XmlPatterns
WANTLIB += Qt5Location Qt5Nfc

MULTI_PACKAGES=	-main -docs

WANTLIB-docs=
LIB_DEPENDS-docs=
RUN_DEPENDS-docs=
PKG_ARCH-docs=	*

FLAVORS =	python3
FLAVOR ?=

.if ${FLAVOR:Mpython3}
FULLPKGNAME-main=	${PKGNAME-main:S/^py-/py3-/}
FULLPKGPATH-main=	x11/py-qt5,-main${MODPY_FLAVOR}
FULLPKGNAME-docs=	${PKGNAME-docs:S/^py-/py3-/}
FULLPKGPATH-docs=	x11/py-qt5,-docs${MODPY_FLAVOR}
.endif

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/py-sip${MODPY_FLAVOR}>=4.16.5 \
		x11/dbus-python${MODPY_FLAVOR}
LIB_DEPENDS=	${MODQT5_LIB_DEPENDS}>=5.5 \
		${MODPY_LIB_DEPENDS}

NO_TEST=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pyqt/}

MODULES=	devel/gettext \
		lang/python \
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
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}qt5
	cp -R ${WRKSRC}/doc/* ${PREFIX}/share/doc/${MODPY_PY_PREFIX}qt5
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}qt5/*
.for b in pylupdate pyrcc pyuic
	mv -f ${PREFIX}/bin/$b5 ${PREFIX}/bin/$b5${MODPY_BIN_SUFFIX}
.endfor
	mv -f ${PREFIX}/lib/qt5/plugins/PyQt5/libpyqt5qmlplugin{,${MODPY_BIN_SUFFIX}}.so
	mv -f ${PREFIX}/lib/qt5/plugins/designer/libpyqt5{,${MODPY_BIN_SUFFIX}}.so

.include <bsd.port.mk>

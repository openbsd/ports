# $OpenBSD: Makefile,v 1.7 2021/10/31 17:08:31 sthen Exp $

COMMENT =	python Qt5WebEngine bindings

MODPY_EGG_VERSION =	5.15.5
DISTNAME =	PyQtWebEngine-${MODPY_EGG_VERSION}
PKGNAME =	py-qtwebengine-${MODPY_EGG_VERSION}

CATEGORIES =	www devel

HOMEPAGE =	https://www.riverbankcomputing.com/software/pyqtwebengine/intro

# GPLv3 with exceptions for use with certain named open-source licenses
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Positioning
WANTLIB += Qt5PrintSupport Qt5Qml Qt5QmlModels Qt5Quick Qt5WebChannel
WANTLIB += Qt5WebEngine Qt5WebEngineCore Qt5WebEngineWidgets Qt5Widgets
WANTLIB += m

MODULES =	lang/python \
		x11/qt5

FLAVORS =	python3
FLAVOR =	python3

MODPY_PI =	Yes

LIB_DEPENDS =	x11/qt5/qtwebengine

RUN_DEPENDS =		x11/py-sip-qt5${MODPY_FLAVOR} \
			devel/py-sip${MODPY_FLAVOR} \
			x11/py-qt5${MODPY_FLAVOR}

BUILD_DEPENDS =		x11/py-sip-qt5${MODPY_FLAVOR} \
			devel/py-sip${MODPY_FLAVOR} \
			devel/py-qt-builder${MODPY_FLAVOR} \
			x11/py-qt5${MODPY_FLAVOR}

QTVER =			qt5
PYQTVER =		PyQt5
SUBST_VARS +=		QTVER PYQTVER

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	${LOCALBASE}/bin/sip-build
CONFIGURE_ARGS =	--verbose \
			--qmake ${MODQT5_QMAKE} \
			--jobs ${MAKE_JOBS} \
			--no-make

MAKE_FLAGS =		-C build \
			CC=${CC} \
			CXX=${CXX} \
			COPTS="${CFLAGS}" \
			CXXOPTS="${CXXFLAGS}"

FAKE_FLAGS =		INSTALL_ROOT=${DESTDIR}

NO_TEST =		Yes

.include <bsd.port.mk>

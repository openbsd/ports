# $OpenBSD: Makefile,v 1.1.1.1 2020/05/19 04:19:45 rsadowski Exp $

COMMENT =	python Qt5WebEngine bindings

V =		5.13.2
DISTNAME =	PyQtWebEngine-${V}
PKGNAME =	py-qtwebengine-${V}

CATEGORIES =	www devel

HOMEPAGE =	https://www.riverbankcomputing.com/software/pyqtwebengine/intro

MASTER_SITES =	https://www.riverbankcomputing.com/static/Downloads/PyQtWebEngine/${V}/

# GPLv3 with exceptions for use with certain named open-source licenses
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Positioning
WANTLIB += Qt5PrintSupport Qt5Qml Qt5Quick Qt5WebChannel Qt5WebEngine
WANTLIB += Qt5WebEngineCore Qt5WebEngineWidgets Qt5Widgets m

MODULES =	lang/python \
		x11/qt5

FLAVORS =	python3
FLAVOR =	python3

LIB_DEPENDS =	${MODPY_LIB_DEPENDS} \
		x11/qt5/qtwebengine

RUN_DEPENDS =		x11/py-sip-qt5${MODPY_FLAVOR} \
			devel/py-sip${MODPY_FLAVOR} \
			x11/py-qt5${MODPY_FLAVOR}

BUILD_DEPENDS =		x11/py-sip-qt5${MODPY_FLAVOR} \
			devel/py-sip${MODPY_FLAVOR} \
			x11/py-qt5${MODPY_FLAVOR}

CONFIGURE_STYLE =	simple

CONFIGURE_SCRIPT =	${MODPY_BIN} ${WRKSRC}/configure.py

QTVER =			qt5
PYQTVER =		PyQt5
SIPDIR =		share/sip/PyQt5${MODPY_BIN_SUFFIX}

CONFIGURE_ARGS +=	--qmake=${MODQT5_QMAKE} \
			--pyqt-sipdir=${LOCALBASE}/${SIPDIR} \
			--sip=${LOCALBASE}/bin/sip${MODPY_BIN_SUFFIX} \
			--verbose

MAKE_FLAGS =		CC="${CC}" CXX="${CXX}"

MAKE_ENV =		INSTALL_ROOT="${WRKINST}"
SUBST_VARS +=		QTVER PYQTVER SIPDIR

NO_TEST =		Yes

.include <bsd.port.mk>

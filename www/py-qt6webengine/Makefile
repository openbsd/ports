COMMENT =	python Qt6WebEngine bindings

MODPY_DISTV =	6.7.0
DISTNAME =	PyQt6_WebEngine-${MODPY_DISTV}
PKGNAME =	py-qt6webengine-${MODPY_DISTV}
REVISION =	0

CATEGORIES =	www devel

HOMEPAGE =	https://www.riverbankcomputing.com/software/pyqtwebengine/

# GPLv3 with exceptions for use with certain named open-source licenses
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Positioning Qt6PrintSupport Qt6Qml Qt6QmlModels
WANTLIB += Qt6Quick Qt6WebChannel Qt6WebChannelQuick Qt6WebEngineCore
WANTLIB += Qt6WebEngineQuick Qt6WebEngineWidgets Qt6Widgets m

MODULES =	lang/python \
		x11/qt6

MODPY_PI =	Yes
MODPY_PI_DIR =	P/PyQt6-WebEngine

LIB_DEPENDS =		x11/qt6/qtwebengine

RUN_DEPENDS =		x11/py-sip-qt6 \
			devel/py-sip \
			x11/py-qt6

BUILD_DEPENDS =		x11/py-sip-qt6 \
			devel/py-sip \
			devel/py-qt-builder \
			x11/py-qt6

QTVER =			qt6
PYQTVER =		PyQt6
SUBST_VARS +=		QTVER PYQTVER

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	${LOCALBASE}/bin/sip-build
CONFIGURE_ARGS =	--verbose

MAKE_FLAGS =		-C build \
			CC=${CC} \
			CXX=${CXX} \
			COPTS="${CFLAGS}" \
			CXXOPTS="${CXXFLAGS}"

FAKE_FLAGS =		INSTALL_ROOT=${DESTDIR}

NO_TEST =		Yes

post-extract:
	ln -sf ${MODQT6_QMAKE} ${WRKDIR}/bin/qmake

.include <bsd.port.mk>

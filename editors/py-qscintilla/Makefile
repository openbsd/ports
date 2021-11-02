# $OpenBSD: Makefile,v 1.30 2021/11/02 00:01:13 sthen Exp $

COMMENT =		Python binding for the Scintilla source code editor

VERSION =		2.11.6
MODPY_EGG_VERSION =	${VERSION}
DISTNAME =		QScintilla-${VERSION}
PKGNAME =		py-qscintilla-${VERSION}
REVISION =		1

CATEGORIES =		editors x11 devel

HOMEPAGE =		https://www.riverbankcomputing.com/software/qscintilla/

# GPLv2/GPLv3
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://www.riverbankcomputing.com/static/Downloads/QScintilla/${VERSION}/

WANTLIB += ${COMPILER_LIBCXX} GL m Qt5Core Qt5Gui Qt5PrintSupport
WANTLIB += Qt5Widgets qscintilla2_qt5

MODULES =		lang/python \
			x11/qt5
QTVER =			qt5
PYQTVER =		PyQt5

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		devel/py-qt-builder${MODPY_FLAVOR} \
			${RUN_DEPENDS}
RUN_DEPENDS =		devel/py-sip${MODPY_FLAVOR} \
			x11/dbus-python${MODPY_FLAVOR} \
			x11/py-qt5${MODPY_FLAVOR}
LIB_DEPENDS =		editors/qscintilla=${VERSION}

COMPILER =		base-clang ports-gcc base-gcc

NO_TEST =		Yes

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	${LOCALBASE}/bin/sip-build
CONFIGURE_ARGS =	--verbose \
			--qmake ${MODQT5_QMAKE} \
			--jobs ${MAKE_JOBS} \
			--no-make

MAKE_FLAGS =	-C build \
		CC=${CC} \
		CXX=${CXX} \
		COPTS="${CFLAGS}" \
		CXXOPTS="${CXXFLAGS}"

FAKE_FLAGS =	INSTALL_ROOT=${DESTDIR}

SUBST_VARS +=	QTVER PYQTVER

.include <bsd.port.mk>

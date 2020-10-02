# $OpenBSD: Makefile,v 1.26 2020/10/02 21:40:25 sthen Exp $

COMMENT =		Python binding for the Scintilla source code editor

VERSION =		2.11.4
REVISION =		3
MODPY_EGG_VERSION =	${VERSION}
DISTNAME =		QScintilla-${VERSION}
PKGNAME =		py-qscintilla-${VERSION}

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
SIPDIR =		share/sip/PyQt5${MODPY_BIN_SUFFIX}

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/py-sip${MODPY_FLAVOR} \
			x11/dbus-python${MODPY_FLAVOR} \
			x11/py-qt5${MODPY_FLAVOR}
LIB_DEPENDS =		editors/qscintilla=${VERSION}

COMPILER =		base-clang ports-gcc base-gcc

WRKSRC =		${WRKDIST}/Python

NO_TEST =		Yes

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	${MODPY_BIN} ${WRKSRC}/configure.py

CONFIGURE_ARGS +=	--pyqt=${PYQTVER} -w \
			--qsci-libdir=${LOCALBASE}/lib \
			--pyqt-sipdir=${LOCALBASE}/${SIPDIR} \
			--qmake=${MODQT5_QMAKE} \
			--sip=${LOCALBASE}/bin/sip${MODPY_BIN_SUFFIX}
MAKE_ENV =		INSTALL_ROOT="${WRKINST}"
SUBST_VARS +=		QTVER PYQTVER SIPDIR MODPY_FLAVOR

.include <bsd.port.mk>

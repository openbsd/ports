# $OpenBSD: Makefile,v 1.20 2019/07/24 08:50:19 landry Exp $

COMMENT =	Python binding for the Scintilla source code editor

VERSION =	2.11.2
DISTNAME =	QScintilla_gpl-${VERSION}
PKGNAME =	py-qscintilla-${VERSION}
CATEGORIES =	editors x11 devel

HOMEPAGE =	http://www.riverbankcomputing.com/software/qscintilla/

# GPLv2/GPLv3
PERMIT_PACKAGE =	Yes

MASTER_SITES =  https://www.riverbankcomputing.com/static/Downloads/QScintilla/${VERSION}/

MODULES = lang/python
FLAVORS = qt5
FLAVOR?=

RUN_DEPENDS = devel/py-sip${MODPY_FLAVOR} \
		x11/dbus-python${MODPY_FLAVOR}


WANTLIB =	${COMPILER_LIBCXX} m

COMPILER =		base-clang ports-gcc base-gcc

WRKSRC =	${WRKDIST}/Python

NO_TEST =	Yes

CONFIGURE_STYLE = simple
CONFIGURE_SCRIPT =	${MODPY_BIN} ${WRKSRC}/configure.py

.if ${FLAVOR} == "qt5"
FULLPKGNAME =	py3-qscintilla-qt5-${VERSION}
QTVER =	qt5
PYQTVER =	PyQt5
SIPDIR=	share/sip/PyQt5-3
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}
RUN_DEPENDS +=	x11/py-qt5${MODPY_FLAVOR}
MODULES +=	x11/qt5
LIB_DEPENDS = editors/qscintilla,qt5=${VERSION}
CONFIGURE_ARGS = --qmake=${LOCALBASE}/bin/qmake-qt5 \
		--sip=${LOCALBASE}/bin/sip-3
WANTLIB += GL Qt5Core Qt5Gui Qt5PrintSupport Qt5Widgets qscintilla2_qt5
.else
QTVER =	qt4
SIPDIR=	share/sip
PYQTVER =	PyQt4
RUN_DEPENDS +=	x11/py-qt4
MODULES +=	x11/qt4
LIB_DEPENDS = editors/qscintilla=${VERSION}
CONFIGURE_ARGS = --qmake=${LOCALBASE}/bin/qmake4 \
		--sip=${LOCALBASE}/bin/sip
WANTLIB += ICE QtGui SM X11 Xext Xi Xinerama Xrender fontconfig
WANTLIB += freetype qscintilla2_qt4
.endif

CONFIGURE_ARGS +=--pyqt=${PYQTVER} -w \
		--qsci-libdir=${LOCALBASE}/lib \
		--pyqt-sipdir=${LOCALBASE}/${SIPDIR}
BUILD_DEPENDS =	${RUN_DEPENDS}
MAKE_ENV =	INSTALL_ROOT="${WRKINST}"
SUBST_VARS +=	QTVER PYQTVER SIPDIR

.include <bsd.port.mk>

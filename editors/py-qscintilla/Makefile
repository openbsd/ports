# $OpenBSD: Makefile,v 1.24 2020/02/29 08:17:58 rsadowski Exp $

COMMENT-main =		Python binding for the Scintilla source code editor
COMMENT-common =	common files for py-qscintilla

VERSION =		2.11.4
REVISION =		1
MODPY_EGG_VERSION =	${VERSION}
DISTNAME =		QScintilla-${VERSION}

PKGNAME-main =		py-qscintilla-${VERSION}
FULLPKGNAME-common =	py-qscintilla-common-${VERSION}
FULLPKGPATH-common =	editors/py-qscintilla,-common

CATEGORIES =		editors x11 devel

HOMEPAGE =		https://www.riverbankcomputing.com/software/qscintilla/

# GPLv2/GPLv3
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://www.riverbankcomputing.com/static/Downloads/QScintilla/${VERSION}/

WANTLIB-main += ${COMPILER_LIBCXX} GL m Qt5Core Qt5Gui Qt5PrintSupport
WANTLIB-main += Qt5Widgets qscintilla2_qt5

WANTLIB-common +=

MULTI_PACKAGES =	-main -common

MODULES =		lang/python \
			x11/qt5
QTVER =			qt5
PYQTVER =		PyQt5
SIPDIR =		share/sip/PyQt5${MODPY_BIN_SUFFIX}

FLAVORS =		python3
FLAVOR ?=

.if ${FLAVOR:Mpython3}
FULLPKGNAME-main =	${PKGNAME-main:S/^py-/py3-/}
FULLPKGPATH-main =	editors/py-qscintilla,-main${MODPY_FLAVOR}
.endif

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/py-sip${MODPY_FLAVOR} \
			x11/dbus-python${MODPY_FLAVOR} \
			x11/py-qt5${MODPY_FLAVOR}
RUN_DEPENDS-main =	${RUN_DEPENDS} \
			editors/py-qscintilla,-common
LIB_DEPENDS-main =	editors/qscintilla=${VERSION}

RUN_DEPENDS-common =
LIB_DEPENDS-common =

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
SUBST_VARS +=		QTVER PYQTVER SIPDIR

.include <bsd.port.mk>

COMMENT =	Qt port of the Scintilla source code editor

# XXX update py-qscintilla alongside this port (same distfile).
VERSION =	2.14.1
DISTNAME =	QScintilla_src-${VERSION}
PKGNAME =	qscintilla-${VERSION}
REVISION =	0

CATEGORIES =	editors x11

SHARED_LIBS +=  qscintilla2_qt5          2.0 # 15.0
SHARED_LIBS +=  qscintilla2_qt6          0.0 # 15.0

HOMEPAGE =	https://www.riverbankcomputing.com/software/qscintilla/

# GPLv2/GPLv3
PERMIT_PACKAGE =	Yes

SITES =		https://www.riverbankcomputing.com/static/Downloads/QScintilla/${VERSION}/

MODULES =	devel/qmake

SUBST_VARS +=	QTVER QTSUB
SEPARATE_BUILD =	No

CONFIGURE_ENV =	HOME=${WRKDIR}

WRKSRC =	${WRKDIST}/src

FLAVORS = qt6
FLAVOR?=

# C++17 (at least)
COMPILER=	base-clang ports-clang ports-gcc
WANTLIB =	${COMPILER_LIBCXX} GL m

.if ${FLAVOR} == "qt6"
FULLPKGNAME =	qscintilla-qt6-${VERSION}
QTVER =		qt6
QTSUB =		share/qt6
MODULES +=	x11/qt6
WANTLIB +=	Qt6Core Qt6Gui Qt6PrintSupport Qt6Widgets
.else
QTVER =		qt5
QTSUB =		lib/qt5
MODULES +=	x11/qt5
WANTLIB +=	Qt5Core Qt5Gui Qt5PrintSupport Qt5Widgets
.endif
NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/qscintilla.pro

.include <bsd.port.arch.mk>

.if ! ${PROPERTIES:Mlp64}
# ports depending on this fail, e.g. py-qscintilla, octave, openscad
# due to undefined symbols.
# if fixing this removes the symbols, remember the shlib major bump
BROKEN+=	undefined symbols in produced library on 32-bit archs, needs fixing
.endif

.include <bsd.port.mk>

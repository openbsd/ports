# $OpenBSD: Makefile,v 1.24 2019/07/24 08:49:43 landry Exp $

COMMENT =	Qt port of the Scintilla source code editor

# XXX update py-qscintilla alongside this port (same distfile).
VERSION =	2.11.2
DISTNAME =	QScintilla_gpl-${VERSION}
PKGNAME =	qscintilla-${VERSION}
CATEGORIES =	editors x11


HOMEPAGE =	http://www.riverbankcomputing.com/software/qscintilla/

# GPLv2/GPLv3
PERMIT_PACKAGE =	Yes

MASTER_SITES =  https://www.riverbankcomputing.com/static/Downloads/QScintilla/${VERSION}/

WANTLIB =	${COMPILER_LIBCXX} m
MODULES =	devel/qmake
FLAVORS = qt5
FLAVOR?=

# C++11 (at least)
COMPILER=	base-clang ports-clang ports-gcc
CXXFLAGS +=	-std=c++11

.if ${FLAVOR} == "qt5"
FULLPKGNAME =	qscintilla-qt5-${VERSION}
QTVER =	qt5
MODULES +=	x11/qt5
SHARED_LIBS =	qscintilla2_qt5 1.0 # 15.0

WANTLIB += GL Qt5Core Qt5Gui Qt5PrintSupport Qt5Widgets
.else
QTVER =	qt4
MODULES +=	x11/qt4
SHARED_LIBS =	qscintilla2_qt4 1.0 # 15.0

WANTLIB += ICE QtGui SM X11 Xext Xi Xinerama Xrender fontconfig
WANTLIB += freetype pthread
.endif

SUBST_VARS +=	QTVER

SEPARATE_BUILD =	No

CONFIGURE_ENV =	HOME=${WRKDIR}

WRKSRC =	${WRKDIST}/Qt4Qt5

NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/qscintilla.pro

.include <bsd.port.mk>

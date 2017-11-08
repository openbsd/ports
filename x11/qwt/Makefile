# $OpenBSD: Makefile,v 1.25 2017/11/08 07:10:43 landry Exp $

COMMENT =		Qt Widgets for Technical Applications
DISTNAME =		qwt-6.1.3
SHARED_LIBS =		qwt 7.0
CATEGORIES =		x11
EXTRACT_SUFX =		.tar.bz2

HOMEPAGE =		http://qwt.sourceforge.net/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=qwt/}

# Qwt License, Version 1.0
# http://qwt.sourceforge.net/qwtlicense.html
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/qmake
MODQMAKE_INSTALL_ROOT =
NO_TEST =		Yes
USE_GMAKE =		Yes

FLAVORS =	qt5
FLAVOR ?=

.if ${FLAVOR:Mqt5}
MODULES +=	x11/qt5
QTVER =	qt5
LIB_DEPENDS +=	x11/qt5/qtsvg \
		x11/qt5/qttools
WANTLIB +=	GL Qt5Concurrent Qt5Core Qt5Designer Qt5Gui Qt5OpenGL
WANTLIB +=	Qt5PrintSupport Qt5Svg Qt5Widgets Qt5Xml
.else
MODULES +=	x11/qt4
QTVER =	qt4
WANTLIB +=	GL ICE QtDesigner QtGui QtOpenGL QtScript QtSvg QtXml SM X11 Xext Xi
WANTLIB +=	Xinerama Xrender fontconfig freetype pthread
.endif

WANTLIB +=	${COMPILER_LIBCXX} m

SUBST_VARS =	WRKINST QTVER

pre-configure:
	${SUBST_CMD} ${WRKSRC}/qwtconfig.pri

post-configure:
# ensure CXXFLAGS/-std=c++11 is passed to all clang++ invocations,including the ones generating dependencies
.if ${FLAVOR:Mqt5}
	sed -i -e 's/@$$(CXX) -M/@$$(CXX) $$(CXXFLAGS) -M/' ${WRKBUILD}/{src,designer}/Makefile
.endif

post-install:
	mv ${PREFIX}/share/doc/qwt/man/man3 ${PREFIX}/man/

.include <bsd.port.mk>

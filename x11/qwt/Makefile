# $OpenBSD: Makefile,v 1.29 2019/07/12 20:51:20 sthen Exp $

COMMENT-main =		Qt Widgets for Technical Applications
COMMENT-common =	common files for the qwt packages

VERSION =		6.1.3
DISTNAME =		qwt-${VERSION}
SHARED_LIBS =		qwt${QTLIBSUFFIX} 7.0
PKGNAME-main =	qwt-${VERSION}
FULLPKGNAME-common =	qwt-common-${VERSION}
FULLPKGPATH-common =	x11/qwt,-common
REVISION =		2

CATEGORIES =		x11
EXTRACT_SUFX =		.tar.bz2

HOMEPAGE =		http://qwt.sourceforge.net/

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=qwt/}

# Qwt License, Version 1.0
# http://qwt.sourceforge.net/qwtlicense.html
PERMIT_PACKAGE =	Yes

MODULES =		devel/qmake
MODQMAKE_INSTALL_ROOT =
NO_TEST =		Yes
USE_GMAKE =		Yes
MULTI_PACKAGES=		-main -common
FLAVORS =		qt5
FLAVOR ?=

COMPILER =		base-clang ports-gcc base-gcc

.if ${FLAVOR:Mqt5}
PKGSPEC-main =	qwt-*-qt5
MODULES +=	x11/qt5
QTVER =	qt5
QTLIBSUFFIX =	-${QTVER}
LIB_DEPENDS +=	x11/qt5/qtsvg \
		x11/qt5/qttools
WANTLIB-main +=	GL Qt5Concurrent Qt5Core Qt5Designer Qt5Gui Qt5OpenGL
WANTLIB-main +=	Qt5PrintSupport Qt5Svg Qt5Widgets Qt5Xml
.else
PKGSPEC-main =	qwt-*-!qt5
MODULES +=	x11/qt4
QTVER =	qt4
QTLIBSUFFIX =	# empty
WANTLIB-main +=	GL ICE QtDesigner QtGui QtOpenGL QtScript QtSvg QtXml SM X11 Xext Xi
WANTLIB-main +=	Xinerama Xrender fontconfig freetype pthread QtCore
.endif

WANTLIB-main +=	${COMPILER_LIBCXX} m

WANTLIB-common = 	# empty
RUN_DEPENDS-common = 	# empty
LIB_DEPENDS-common = 	# empty
PKG_ARCH-common=	*

RUN_DEPENDS =	${FULLPKGPATH-common}

SUBST_VARS =	WRKINST QTVER QTLIBSUFFIX

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{qwtconfig.pri,qwt.prf} \
		${WRKSRC}/designer/designer.pro \
		${WRKSRC}/textengines/textengines.pri \
		${WRKSRC}/src/src.pro

post-configure:
# ensure CXXFLAGS/-std=c++11 is passed to all clang++ invocations,including the ones generating dependencies
.if ${FLAVOR:Mqt5}
	sed -i -e 's/@$$(CXX) -M/@$$(CXX) $$(CXXFLAGS) -M/' ${WRKBUILD}/{src,designer}/Makefile
.endif

post-install:
	rm -rf ${PREFIX}/share/doc/qwt/html/*.md5
	mv ${PREFIX}/share/doc/qwt/man/man3 ${PREFIX}/man/

.include <bsd.port.mk>

COMMENT-main=		Qt widgets for technical applications
COMMENT-common =	common files for the qwt packages

VERSION =	6.3.0
DISTNAME =	qwt-${VERSION}
FULLPKGNAME-common =	qwt-common-${VERSION}
FULLPKGPATH-common =	x11/qwt,-common

SHARED_LIBS =	qwt${QTLIBSUFFIX} 8.0

CATEGORIES =	x11

HOMEPAGE =	https://qwt.sourceforge.net/

SITES =		${SITE_SOURCEFORGE:=qwt/}
EXTRACT_SUFX =	.tar.bz2

# Qwt License, Version 1.0
# https://qwt.sourceforge.net/qwtlicense.html
PERMIT_PACKAGE =	Yes

MODULES =	devel/qmake

MODQMAKE_INSTALL_ROOT =

NO_TEST =	Yes
USE_GMAKE =	Yes

MULTI_PACKAGES=		-main -common
FLAVORS =		qt6
FLAVOR ?=

.if ${FLAVOR:Mqt6}
PKGSPEC-main =	qwt-*-qt6
MODULES +=	x11/qt6
QTVER =	qt6
QTLIBSUFFIX =	-${QTVER}
LIB_DEPENDS =	x11/qt6/qttools \
		x11/qt6/qtsvg

WANTLIB-main +=	Qt6Concurrent Qt6Core Qt6Designer Qt6Gui Qt6OpenGL
WANTLIB-main +=	Qt6OpenGLWidgets Qt6PrintSupport Qt6Svg Qt6Widgets Qt6Xml
.else
PKGSPEC-main =	qwt-*-!qt6
MODULES +=	x11/qt5

WANTLIB-main +=	Qt5Concurrent Qt5Core Qt5Designer Qt5Gui Qt5OpenGL
WANTLIB-main +=	Qt5PrintSupport Qt5Svg Qt5Widgets Qt5Xml

LIB_DEPENDS =	x11/qt5/qttools,-main \
		x11/qt5/qtsvg

QTVER =		qt5
QTLIBSUFFIX =	# empty on purpose
.endif
WANTLIB-main +=	${COMPILER_LIBCXX} GL m
WANTLIB-common = 	# empty
RUN_DEPENDS-common = 	# empty
LIB_DEPENDS-common = 	# empty
PKG_ARCH-common=	*
RUN_DEPENDS =	${FULLPKGPATH-common}

SUBST_VARS =	WRKINST QTVER QTLIBSUFFIX

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{qwtconfig.pri,qwt.prf} \
		${WRKSRC}/designer/designer.pro \
		${WRKSRC}/playground/playground.pri \
		${WRKSRC}/examples/examples.pri \
		${WRKSRC}/tests/tests.pri \
		${WRKSRC}/src/src.pro
post-configure:
	# ensure CXXFLAGS/-std=c++11 is passed to all clang++
	# invocations,including the ones generating dependencies
	sed -i -e 's/@$$(CXX) -M/@$$(CXX) $$(CXXFLAGS) -M/' \
		${WRKBUILD}/{src,designer}/Makefile

post-install:
	rm -rf ${PREFIX}/share/doc/qwt/html/*.md5

.include <bsd.port.mk>

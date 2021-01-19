# $OpenBSD: Makefile,v 1.31 2021/01/19 06:20:27 rsadowski Exp $

COMMENT=	Qt widgets for technical applications

VERSION =	6.1.6
DISTNAME =	qwt-${VERSION}

SHARED_LIBS =	qwt${QTLIBSUFFIX} 7.1

CATEGORIES =	x11

HOMEPAGE =	http://qwt.sourceforge.net/

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=qwt/}
EXTRACT_SUFX =	.tar.bz2

# Qwt License, Version 1.0
# http://qwt.sourceforge.net/qwtlicense.html
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Widgets Qt5Xml
WANTLIB += m

MODULES =	x11/qt5 \
		devel/qmake

MODQMAKE_INSTALL_ROOT =

NO_TEST =	Yes
USE_GMAKE =	Yes

LIB_DEPENDS =	x11/qt5/qtsvg

QTVER =		qt5
SUBST_VARS =	WRKINST QTVER QTLIBSUFFIX

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{qwtconfig.pri,qwt.prf} \
		${WRKSRC}/designer/designer.pro \
		${WRKSRC}/textengines/textengines.pri \
		${WRKSRC}/src/src.pro
post-configure:
	# ensure CXXFLAGS/-std=c++11 is passed to all clang++
	# invocations,including the ones generating dependencies
	sed -i -e 's/@$$(CXX) -M/@$$(CXX) $$(CXXFLAGS) -M/' \
		${WRKBUILD}/{src,designer}/Makefile

post-install:
	rm -rf ${PREFIX}/share/doc/qwt/html/*.md5
	mv ${PREFIX}/share/doc/qwt/man/man3 ${PREFIX}/man/

.include <bsd.port.mk>

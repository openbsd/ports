# $OpenBSD: Makefile,v 1.7 2014/01/09 00:37:45 sthen Exp $

COMMENT =		the programmer's solid 3D CAD modeller

V =			2013.06
DISTNAME =		openscad-${V}

CATEGORIES =		cad

HOMEPAGE =		http://www.openscad.org/

# GPLv2+ with CGAL exception
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m pthread stdc++
WANTLIB += CGAL GL GLEW GLU ICE lib/qt4/QtGui lib/qt4/QtOpenGL
WANTLIB += SM X11 Xext Xi Xinerama Xrender boost_filesystem-mt
WANTLIB += boost_program_options-mt boost_regex-mt boost_system-mt
WANTLIB += boost_thread-mt fontconfig freetype gmp mpfr opencsg

MASTER_SITES =		https://openscad.googlecode.com/files/
DISTFILES =		openscad-${V}.src.tar.gz

MODULES =		x11/qt4
BUILD_DEPENDS =		devel/bison \
			devel/flex \
			math/eigen2
LIB_DEPENDS =		devel/boost \
			devel/gmp \
			devel/mpfr \
			graphics/glew \
			graphics/opencsg \
			math/cgal

RUN_DEPENDS =		devel/desktop-file-utils

QMAKE_ENV =		EIGEN2DIR=${LOCALBASE}/include/eigen2
QMAKE_FLAGS =		VERSION=${V}
MAKE_ENV =		INSTALL_ROOT=${DESTDIR}

pre-configure:
	ln -sf ${LOCALBASE}/bin/gflex ${WRKDIR}/bin/flex
	ln -sf ${LOCALBASE}/bin/bison ${WRKDIR}/bin/yacc

do-configure:
	cd ${WRKSRC} && \
	    ${SETENV} ${QMAKE_ENV} qmake4 ${QMAKE_FLAGS} openscad.pro

.include <bsd.port.mk>

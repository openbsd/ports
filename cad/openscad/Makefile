# $OpenBSD: Makefile,v 1.1.1.1 2011/04/29 18:55:37 matthew Exp $

COMMENT =		the programmer's solid 3D CAD modeller

V =			2011.04
DISTNAME =		openscad-${V}

CATEGORIES =		cad

VMEM_WARNING =		Yes

HOMEPAGE =		http://www.openscad.org/

# GPLv2+ with CGAL exception
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		CGAL GL GLEW GLU boost_program_options-mt \
			boost_thread-mt c gmp lib/qt4/QtGui lib/qt4/QtOpenGL m \
			mpfr opencsg pthread stdc++

MASTER_SITES =		https://github.com/downloads/openscad/openscad/
DISTFILES =		openscad-${V}.src.tar.gz

MODULES =		x11/qt4
BUILD_DEPENDS =		devel/bison \
			devel/cmake \
			devel/flex \
			math/eigen2
LIB_DEPENDS =		devel/boost \
			devel/gmp \
			devel/mpfr \
			graphics/glew \
			graphics/opencsg \
			math/cgal
			
CONFIGURE_ENV =		EIGEN2DIR=${LOCALBASE}/include/eigen2
MAKE_ENV =		INSTALL_ROOT=${DESTDIR}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/openscad.pro
	ln -sf ${LOCALBASE}/bin/gflex ${WRKDIR}/bin/flex
	ln -sf ${LOCALBASE}/bin/bison ${WRKDIR}/bin/yacc

do-configure:
	cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} qmake4 openscad.pro

.include <bsd.port.mk>

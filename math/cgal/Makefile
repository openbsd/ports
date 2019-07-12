# $OpenBSD: Makefile,v 1.24 2019/07/12 20:47:40 sthen Exp $

BROKEN-mips64 =		ICE on Interval_nt.h:98

COMMENT =		Computational Geometry Algorithms Library

# when updating this port, don't just change the version number here.
# MASTER_SITES needs to be adapted for every new tarball.
# See https://gforge.inria.fr/frs/?group_id=52 for files index.
DISTNAME =		CGAL-4.6.3
MASTER_SITES =		https://gforge.inria.fr/frs/download.php/file/35139/
PKGNAME =		${DISTNAME:L}
REVISION =		5
EPOCH =			0

SHARED_LIBS =		CGAL		1.0 \
			CGAL_Core	1.0 \
			CGAL_ImageIO	1.0 \
			CGAL_Qt4	1.0

CATEGORIES =		math

HOMEPAGE =		http://www.cgal.org/

# mix of LGPLv2.1 and QPL; see http://www.cgal.org/license.html
PERMIT_PACKAGE =	Yes

WANTLIB += GL GLU boost_system-mt boost_thread-mt gmp m mpfr pthread
WANTLIB += boost_atomic-mt boost_chrono-mt boost_date_time-mt
WANTLIB += ${COMPILER_LIBCXX} z lib/qt4/QtGui lib/qt4/QtOpenGL lib/qt4/QtSvg

COMPILER =		base-clang ports-gcc base-gcc

EXTRACT_SUFX =		.tar.xz

MODULES =		devel/cmake \
			x11/qt4
BIULD_DEPENDS =		math/eigen3
LIB_DEPENDS =		devel/boost \
			devel/gmp \
			devel/mpfr

CXXFLAGS +=		-I${X11BASE}/include

CONFIGURE_ARGS +=	-DCGAL_INSTALL_MAN_DIR="man/man1" \
			-DCGAL_INSTALL_DOC_DIR="share/doc/cgal"
CONFIGURE_ENV =		LDFLAGS="-L${X11BASE}/lib"

NO_TEST =		Yes

post-extract:
	rm ${WRKSRC}/cmake/modules/FindBLAS.cmake \
	   ${WRKSRC}/cmake/modules/FindLAPACK.cmake \
	   ${WRKSRC}/cmake/modules/FindOpenGL.cmake \
	   ${WRKSRC}/scripts/cgal_make_macosx_app

.include <bsd.port.mk>

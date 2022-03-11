BROKEN-mips64 =		ICE on Interval_nt.h:98

COMMENT =		Computational Geometry Algorithms Library

DISTNAME =		CGAL-4.14.2
PKGNAME =		${DISTNAME:L}
EPOCH =			0

SHARED_LIBS +=  CGAL                    2.0 # 13.0.3
SHARED_LIBS +=  CGAL_Core               2.0 # 14.0.3
SHARED_LIBS +=  CGAL_ImageIO            2.0 # 14.0.0
SHARED_LIBS +=  CGAL_Qt5                2.0 # 14.0.0

CATEGORIES =		math

HOMEPAGE =		https://www.cgal.org/

# mix of LGPLv2.1 and QPL; see https://www.cgal.org/license.html
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5OpenGL Qt5Svg
WANTLIB += Qt5Widgets Qt5Xml gmp m mpfr z

MASTER_SITES =		https://github.com/CGAL/cgal/releases/download/releases%2FCGAL-4.14.2/
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/cmake \
			x11/qt5

BUILD_DEPENDS =		math/eigen3 \
			devel/boost

LIB_DEPENDS =		devel/gmp \
			devel/mpfr \
			x11/qt5/qtsvg

CXXFLAGS +=		-I${X11BASE}/include

CONFIGURE_ARGS +=	-DCGAL_INSTALL_MAN_DIR="man/man1" \
			-DCGAL_INSTALL_DOC_DIR="share/doc/cgal"
CONFIGURE_ENV +=	LDFLAGS="-L${X11BASE}/lib"

NO_TEST =		Yes

.include <bsd.port.mk>

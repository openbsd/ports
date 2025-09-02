COMMENT =		CGAL wrapper implementing 2D/3D operations on OGC features

V =			v2.2.0
DISTNAME =		SFCGAL-${V}
PKGNAME =		${DISTNAME:L:S/v//}
SHARED_LIBS +=	SFCGAL	0.1 # 0.0

CATEGORIES =		geo math

HOMEPAGE =		https://sfcgal.gitlab.io/SFCGAL/

# LGPLv3+ and GPLv3+; see https://www.cgal.org/license.html
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
SITES =			https://gitlab.com/sfcgal/SFCGAL/-/archive/${V}/

MODULES =		devel/cmake

BUILD_DEPENDS +=	math/cgal

LIB_DEPENDS +=		devel/boost>=1.84.0p8 \
			devel/gmp,-cxx \
			devel/gmp,-main \
			devel/mpfr

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}

WANTLIB += ${COMPILER_LIBCXX} boost_atomic-mt boost_chrono-mt
WANTLIB += boost_filesystem-mt boost_program_options-mt boost_serialization-mt
WANTLIB += boost_system-mt boost_thread-mt boost_timer-mt boost_unit_test_framework-mt
WANTLIB += gmp gmpxx m mpfr

CONFIGURE_ARGS +=	-DSFCGAL_BUILD_TESTS:BOOL=ON

.include <bsd.port.mk>

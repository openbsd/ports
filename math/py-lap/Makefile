COMMENT =		linear assignment problem solver (LAPJV/LAPMOD)

MODPY_DISTV =		0.5.12

DISTNAME=		lap-${MODPY_DISTV}
PKGNAME=		py-${DISTNAME}

CATEGORIES =		math

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m

COMPILER =		base-clang ports-gcc

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_TEST_LINK_SO =	Yes

BUILD_DEPENDS=		lang/cython
RUN_DEPENDS =		math/py-numpy
TEST_DEPENDS =		devel/py-test-timeout

.include <bsd.port.mk>

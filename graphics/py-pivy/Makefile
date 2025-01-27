COMMENT =		Python bindings for coin

MODPY_DISTV =		0.6.9
PKGNAME =		py-${DISTNAME}

DIST_TUPLE +=		github coin3d pivy ${MODPY_DISTV} .

CATEGORIES =		graphics
MAINTAINER =		Johannes Thyssen Tishman <ports@thyssentishman.com>

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} Coin m

COMPILER =		base-clang ports-gcc
MODULES =		lang/python \
			devel/cmake

MODPY_PYBUILD =		setuptools
MODPY_TEST_LINK_SO =    Yes

# other tests require various combinations of X, additional deps,
# and not running with PORTS_PRIVSEP
MODPY_PYTEST_ARGS =     -v tests/coin_tests.py

BUILD_DEPENDS =		devel/swig
LIB_DEPENDS =		graphics/coin

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_SoQt=ON
MAKE_ENV =		CPPFLAGS="-I${X11BASE}/include"

.include <bsd.port.mk>

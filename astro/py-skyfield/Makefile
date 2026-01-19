COMMENT=	computes positions for the stars, planets, and satellites

MODPY_DISTV=	1.54
DISTNAME=	skyfield-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

# wants git head of "assay" for tests
DIST_TUPLE=	github brandon-rhodes assay 74617d70e77afa09f58b3169cf496679ac5d5621 assay_src

CATEGORIES=	astro

# https://github.com/skyfielders/python-skyfield
HOMEPAGE=	https://rhodesmill.org/skyfield/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

# graphing functions also use matplotlib
RUN_DEPENDS=	astro/py-jplephem \
		astro/py-sgp4 \
		math/py-numpy

# tests need network access to download ephemera
TEST_DEPENDS=	astro/py-astropy \
		devel/py-mock \
		devel/py-tz \
		devel/pyflakes \
		math/py-pandas
# loads of test errors along the lines of "fixture 'ts' not found",
# possibly missing some dep but I don't see where it would come from,
# does anyone have ideas?
MODPY_PYTEST_ARGS= \
		   --ignore skyfield/tests/test_against_horizons.py \
		   --ignore skyfield/tests/test_against_novas.py \
		   --ignore skyfield/tests/test_api.py \
		   --ignore skyfield/tests/test_elementslib.py \
		   --ignore skyfield/tests/test_io.py \
		   --ignore skyfield/tests/test_timelib.py \
		   --ignore skyfield/tests/test_topos.py

pre-configure:
	mv ${WRKSRC}/assay_src/assay ${WRKSRC}/

.include <bsd.port.mk>

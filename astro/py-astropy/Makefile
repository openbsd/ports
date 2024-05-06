COMMENT =	community-developed python astronomy tools

MODPY_EGG_VERSION =	5.3.4
DISTNAME =	astropy-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	astro

HOMEPAGE =	https://astropy.org

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	astropy

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

BUILD_DEPENDS =		devel/py-extension-helpers${MODPY_FLAVOR} \
			devel/py-setuptools_scm${MODPY_FLAVOR} \
			devel/py-wheel${MODPY_FLAVOR} \
			lang/cython${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR} \
			math/py-oldest-supported-numpy${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR}

RUN_DEPENDS =		astro/py-erfa${MODPY_FLAVOR} \
			sysutils/py-packaging${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR} \
			math/py-scipy${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR}

PORTHOME =		${WRKDIR}
TEST_DEPENDS =		astro/py-skyfield${MODPY_FLAVOR} \
			devel/py-objgraph${MODPY_FLAVOR} \
			devel/py-test-astropy${MODPY_FLAVOR} \
			devel/py-test-xdist${MODPY_FLAVOR} \
			graphics/py-matplotlib${MODPY_FLAVOR} \
			math/py-h5py${MODPY_FLAVOR} \
			math/py-pandas${MODPY_FLAVOR} \
			math/py-scikit-image${MODPY_FLAVOR}
# this covers main tests, but skips some.
# note if looking at adding more, pyarrow != arrow

pre-test:
	cd ${WRKSRC} && ${MODPY_CMD} build_ext --inplace

.include <bsd.port.mk>

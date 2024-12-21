COMMENT =	community-developed python astronomy tools

MODPY_DISTV =	5.3.4
DISTNAME =	astropy-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	2

CATEGORIES =	astro

HOMEPAGE =	https://astropy.org

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	astropy

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

BUILD_DEPENDS =		devel/py-extension-helpers \
			devel/py-setuptools_scm \
			devel/py-wheel \
			lang/cython \
			math/py-numpy \
			math/py-oldest-supported-numpy \
			www/py-jinja2

RUN_DEPENDS =		astro/py-erfa \
			sysutils/py-packaging \
			math/py-numpy \
			math/py-scipy \
			textproc/py-yaml

PORTHOME =		${WRKDIR}
TEST_DEPENDS =		astro/py-skyfield \
			devel/py-objgraph \
			devel/py-test-astropy \
			devel/py-test-xdist \
			graphics/py-matplotlib \
			math/py-h5py \
			math/py-pandas \
			math/py-scikit-image
# this covers main tests, but skips some.
# note if looking at adding more, pyarrow != arrow

pre-test:
	cd ${WRKSRC} && ${MODPY_CMD} build_ext --inplace

.include <bsd.port.mk>

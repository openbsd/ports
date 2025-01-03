COMMENT=	community-developed python astronomy tools

# 6.1 requires numpy>=2
MODPY_DISTV=	6.0.1
DISTNAME=	astropy-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	astro

HOMEPAGE=	https://astropy.org

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

MODPY_PYTEST_ARGS=  astropy
MODPY_TEST_LINK_SO= Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

BUILD_DEPENDS=	devel/py-extension-helpers \
		devel/py-setuptools_scm \
		devel/py-wheel \
		lang/cython \
		math/py-numpy \
		math/py-oldest-supported-numpy \
		www/py-jinja2

RUN_DEPENDS=	astro/py-astropy-iers-data \
		astro/py-erfa \
		sysutils/py-packaging \
		math/py-numpy \
		math/py-scipy \
		textproc/py-yaml

# this covers main tests, but some optional deps are not available so some
# are skipped.
#
# if looking at adding more, pyarrow is https://arrow.apache.org/docs/python/
# (would go in e.g. databases/arrow/python) and not py-arrow.
PORTHOME=	${WRKDIR}
TEST_DEPENDS=	astro/py-skyfield \
		devel/py-objgraph \
		devel/py-test-astropy \
		devel/py-test-xdist \
		graphics/py-matplotlib \
		math/py-h5py \
		math/py-pandas \
		math/py-scikit-image

.include <bsd.port.mk>

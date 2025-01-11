USE_NOBTCFI-aarch64 =	Yes# fortran

COMMENT =	pythonic interface to the HDF5 binary data format

MODPY_DISTV =	3.12.1
DISTNAME =		h5py-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math
REVISION =		1

HOMEPAGE =		https://www.h5py.org/
MAINTAINER =		Martin Reindl <martin@catai.org>

# BSD
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

WANTLIB =	hdf5 hdf5_hl

MAKE_ENV =	HDF5_DIR=${PREFIX}

BUILD_DEPENDS = lang/cython \
		math/py-oldest-supported-numpy \
		math/py-numpy \
		devel/py-pkgconfig

LIB_DEPENDS =	math/hdf5

TEST_DEPENDS =	devel/py-coveralls \
		devel/py-test-cov

do-test:
	cd ${WRKDIR} && ${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} -c 'import h5py; h5py.run_tests()'

.include <bsd.port.mk>

COMMENT=	Python interface to the netCDF C library

MODPY_EGG_VERSION=	1.6.5
DISTNAME=		netCDF4-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:L}
CATEGORIES=		math
REVISION=		0

HOMEPAGE=		http://unidata.github.io/netcdf4-python/

MAINTAINER=		Martin Reindl <martin@catai.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_PYBUILD=		setuptools
MODPY_PI=		Yes

WANTLIB+=		netcdf

BUILD_DEPENDS+=		archivers/blosc \
			archivers/libzip \
			archivers/snappy \
			lang/cython${MODPY_FLAVOR} \
			math/hdf5 \
			math/netcdf \
			math/py-oldest-supported-numpy${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}

RUN_DEPENDS+=		lang/cython${MODPY_FLAVOR} \
			math/hdf5 \
			math/py-numpy${MODPY_FLAVOR} \
			math/py-cftime${MODPY_FLAVOR}

TEST_DEPENDS=		${FULLPKGNAME}:${FULLPKGPATH}
TEST_ENV=		TMPDIR=${WRKDIR}/tmp

CONFIGURE_ENV+=         LDFLAGS="-L${LOCALBASE}/lib" \
                        CPPFLAGS="-I${LOCALBASE}/include"

FLAVORS =	python3
FLAVOR =	python3

pre-test:
	@mkdir -p ${WRKDIR}/tmp

do-test:
	@cd ${WRKSRC}/test && ${SETENV} ${ALL_TEST_ENV} ${MODPY_BIN} run_all.py

.include <bsd.port.mk>

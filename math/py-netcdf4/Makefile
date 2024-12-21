COMMENT=	Python interface to the netCDF C library

MODPY_DISTV=	1.7.2
DISTNAME=		netcdf4-${MODPY_DISTV}
PKGNAME=		py-${DISTNAME:L}
CATEGORIES=		math
REVISION=		0

HOMEPAGE=		http://unidata.github.io/netcdf4-python/

MAINTAINER=		Martin Reindl <martin@catai.org>

# MIT
PERMIT_PACKAGE=		Yes

COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

MODULES=		lang/python
MODPY_PYBUILD=		setuptools_scm
MODPY_PI=		Yes

WANTLIB+=		netcdf

BUILD_DEPENDS+=		archivers/blosc \
			archivers/libzip \
			archivers/snappy \
			lang/cython \
			math/hdf5 \
			math/netcdf \
			math/py-oldest-supported-numpy \
			math/py-numpy

RUN_DEPENDS+=		lang/cython \
			math/hdf5 \
			math/py-numpy \
			devel/py-certifi \
			math/py-cftime

TEST_DEPENDS=		${FULLPKGNAME}:${FULLPKGPATH}
TEST_ENV=		TMPDIR=${WRKDIR}/tmp

CONFIGURE_ENV+=         LDFLAGS="-L${LOCALBASE}/lib" \
                        CPPFLAGS="-I${LOCALBASE}/include"

pre-test:
	@mkdir -p ${WRKDIR}/tmp

do-test:
	@cd ${WRKSRC}/test && ${SETENV} ${ALL_TEST_ENV} ${MODPY_BIN} run_all.py

.include <bsd.port.mk>

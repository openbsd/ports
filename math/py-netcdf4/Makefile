COMMENT=	Python interface to the netCDF C library

MODPY_EGG_VERSION=	1.5.8
REVISION=		1
DISTNAME=		netCDF4-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:L}
CATEGORIES=		math

HOMEPAGE=		http://unidata.github.io/netcdf4-python/

MAINTAINER=		Martin Reindl <martin@catai.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes
MODPY_PI=		Yes

WANTLIB+=		netcdf pthread

LIB_DEPENDS=		math/netcdf

BUILD_DEPENDS+=		lang/cython${MODPY_FLAVOR} \
			math/hdf5 \
			math/netcdf \
			math/py-numpy${MODPY_FLAVOR}

RUN_DEPENDS+=		lang/cython${MODPY_FLAVOR} \
			math/hdf5 \
			math/netcdf \
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

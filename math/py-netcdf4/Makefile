# $OpenBSD: Makefile,v 1.4 2020/08/10 21:34:45 edd Exp $

COMMENT=	Python interface to the netCDF C library

MODPY_EGG_VERSION=	1.5.4
DISTNAME=		netCDF4-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:L}
CATEGORIES=		math

HOMEPAGE=		http://unidata.github.io/netcdf4-python/

MAINTAINER=		Martin Reindl <martin@catai.org>

# BSD-like
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes
MODPY_PI=		Yes
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

WANTLIB+=		netcdf hdf5 hdf5_hl pthread ${MODPY_WANTLIB}

LIB_DEPENDS=		math/netcdf \
			math/hdf5

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

pre-test:
	@mkdir -p ${WRKDIR}/tmp

do-test:
	@cd ${WRKSRC}/test && ${SETENV} ${ALL_TEST_ENV} ${MODPY_BIN} run_all.py

.include <bsd.port.mk>

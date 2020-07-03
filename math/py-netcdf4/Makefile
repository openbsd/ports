# $OpenBSD: Makefile,v 1.2 2020/07/03 21:12:57 sthen Exp $

COMMENT=	Python interface to the netCDF C library

MODPY_EGG_VERSION=	1.5.3
DISTNAME=		netCDF4-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:L}
CATEGORIES=		math
REVISION=		0

HOMEPAGE=		http://unidata.github.io/netcdf4-python/

MAINTAINER=		Martin Reindl <martin@catai.org>

# BSD-like
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes
MODPY_PI=		Yes
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

PORT_HOME=		${WRKDIR}

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

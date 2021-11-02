# $OpenBSD: Makefile,v 1.11 2021/11/02 00:01:36 sthen Exp $

COMMENT=	Python interface to the netCDF C library

MODPY_EGG_VERSION=	1.5.7
DISTNAME=		netCDF4-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:L}
CATEGORIES=		math
REVISION=		0

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

pre-test:
	@mkdir -p ${WRKDIR}/tmp

do-test:
	@cd ${WRKSRC}/test && ${SETENV} ${ALL_TEST_ENV} ${MODPY_BIN} run_all.py

.include <bsd.port.mk>

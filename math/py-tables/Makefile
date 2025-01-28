USE_NOBTCFI-aarch64 =	Yes# fortran

COMMENT=	Python package to manage extremely large amounts of data

MODPY_DISTV=	3.10.1
DISTNAME=	tables-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	math
REVISION=	3

HOMEPAGE=	https://www.pytables.org/
MAINTAINER=	Martin Reindl <martin@catai.org>

# BSD
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

WANTLIB=	blosc blosc2 bz2 hdf5 lzo2

MODPY_DISTUTILS_BUILDARGS=	--blosc=${LOCALBASE} \
				--blosc2=${LOCALBASE} \
				--hdf5=${LOCALBASE} \
				--lzo=${LOCALBASE}

CFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

BUILD_DEPENDS+=	lang/cython \
		devel/py-typing-extensions \
		math/py-numpy \
		math/py-oldest-supported-numpy \
		sysutils/py-cpuinfo \
		sysutils/py-packaging

LIB_DEPENDS+=	archivers/lzo2 \
		archivers/bzip2 \
		archivers/blosc \
		archivers/blosc2 \
		math/hdf5

RUN_DEPENDS+=	math/netcdf \
		sysutils/py-packaging

TEST_DEPENDS=	math/py-numexpr \
		math/hdf5

do-test:
	cd ${WRKDIR} && ${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} -c 'import tables ; tables.test()'

.include <bsd.port.mk>

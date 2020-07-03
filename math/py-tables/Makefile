# $OpenBSD: Makefile,v 1.3 2020/07/03 21:12:58 sthen Exp $

COMMENT=	Python package to manage extremely large amounts of data

MODPY_EGG_VERSION=	3.6.1
DISTNAME=		tables-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		math
REVISION=		1

HOMEPAGE=		https://www.pytables.org/
MAINTAINER=		Martin Reindl <martin@catai.org>

# BSD
PERMIT_PACKAGE=	Yes

COMPILER=		base-clang ports-gcc

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes
MODPY_PI=		Yes
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

WANTLIB=	pthread ${MODPY_WANTLIB} blosc bz2 hdf5 lzo2

MODPY_DISTUTILS_BUILDARGS=	--hdf5=${LOCALBASE} \
				--lzo=${LOCALBASE}

CFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

BUILD_DEPENDS+= lang/cython${MODPY_FLAVOR} \
                math/py-numpy${MODPY_FLAVOR} \

LIB_DEPENDS+=	archivers/lzo2 \
		archivers/bzip2 \
		archivers/blosc \
		math/hdf5

RUN_DEPENDS+=	math/netcdf

TEST_DEPENDS=	math/py-numexpr${MODPY_FLAVOR} \
		math/hdf5

do-test: fake
	cd ${WRKDIR} && ${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} -c 'import tables ; tables.test()'

.include <bsd.port.mk>

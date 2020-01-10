# $OpenBSD: Makefile,v 1.1 2020/01/10 13:30:41 martin Exp $

COMMENT=	Python package to manage extremely large amounts of data

MODPY_EGG_VERSION=	3.6.1
DISTNAME=		tables-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		math

HOMEPAGE=		https://www.pytables.org/
MAINTAINER=		Martin Reindl <martin@catai.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes
MODPY_PI=		Yes
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODPY_PYTEST=		Yes
MODPY_PYTEST_ARGS=	${TESTLIBDIR}

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

TEST_DEPENDS=	devel/py-coveralls${MODPY_FLAVOR} \
		devel/py-test-cov${MODPY_FLAVOR} \
		math/py-numexpr${MODPY_FLAVOR}

TESTLIBDIR=	${WRKSRC}/lib.openbsd-${OSREV}-${ARCH}-${MODPY_VERSION}/tables/

TEST_ENV=	PYTHONPATH=${WRKSRC}/${TESTLIBDIR}

.include <bsd.port.mk>

COMMENT=	Python bindings for the Brotli compression library

MODPY_DISTV=	1.2.0
DISTNAME=	brotli-${MODPY_DISTV}
PKGNAME=	py-brotli-${MODPY_DISTV}

# rename to avoid conflict with archivers/brotli
DISTFILES=	pypi-{}brotli-${MODPY_DISTV}.tar.gz

CATEGORIES=	archivers

HOMEPAGE=	https://github.com/google/brotli

# MIT
PERMIT_PACKAGE=	Yes

# C++
COMPILER=	base-clang ports-gcc

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS= python/
BUILD_DEPENDS=	devel/py-pkgconfig

# not yet; archivers/brotli is old
#MAKE_ENV=	USE_SYSTEM_BROTLI=1
#LIB_DEPENDS=	archivers/brotli
#WANTLIB=	brotlicommon brotlidec brotlienc

.include <bsd.port.mk>

COMMENT=	Python bindings to the Brotli compression library

MODPY_DISTV=	1.2.0.0
DISTNAME=	brotlicffi-${MODPY_DISTV}
PKGNAME=	py-brotlicffi-${MODPY_DISTV}
CATEGORIES=	archivers

DISTFILES.td=	brotli-testdata-1.2.0.tar.xz{testdata.txz}
SITES.td=	https://github.com/google/brotli/releases/download/v1.2.0/

# MIT
PERMIT_PACKAGE=Yes

WANTLIB += ${COMPILER_LIBCXX} brotlidec brotlienc pthread

COMPILER=	base-clang ports-gcc

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

MAKE_ENV=	USE_SHARED_BROTLI=1

LIB_DEPENDS=	archivers/brotli
RUN_DEPENDS=	devel/py-cffi
BUILD_DEPENDS=	${RUN_DEPENDS}

TEST_DEPENDS=	devel/py-hypothesis

post-extract:
	mv ${WRKDIR}/tests ${WRKSRC}/libbrotli/

.include <bsd.port.mk>

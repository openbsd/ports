COMMENT=	fast Python json encoder/decoder (maintenance-only)

MODPY_DISTV=	6.1.0
DISTNAME=	ujson-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/ultrajson/ultrajson

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} m

COMPILER=	base-clang ports-gcc

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

.include <bsd.port.mk>

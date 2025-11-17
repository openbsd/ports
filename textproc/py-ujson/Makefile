COMMENT=	fast Python json encoder/decoder

MODPY_DISTV=	5.11.0
DISTNAME=	ujson-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} m

COMPILER=	base-clang ports-gcc

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

.include <bsd.port.mk>

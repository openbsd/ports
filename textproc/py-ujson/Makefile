COMMENT=	fast Python json encoder/decoder

MODPY_DISTV=	5.10.0
DISTNAME=	ujson-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	2

CATEGORIES=	textproc

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} m

COMPILER=	base-clang ports-gcc

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

.include <bsd.port.mk>

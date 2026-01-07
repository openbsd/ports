COMMENT=	fast numerical expression evaluator for NumPy

MODPY_DISTV=	2.10.2
DISTNAME=	numexpr-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	math
REVISION=	0

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB +=	m pthread ${MODPY_WANTLIB} ${COMPILER_LIBCXX}

COMPILER=	base-clang ports-gcc

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_TEST_DIR=	${WRKSRC}/build/lib*

RUN_DEPENDS=	math/py-numpy \
		sysutils/py-packaging
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>

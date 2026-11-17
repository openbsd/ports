COMMENT=	fast numerical expression evaluator for NumPy

MODPY_DISTV=	2.14.2
DISTNAME=	numexpr-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	math

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB +=	m pthread ${MODPY_WANTLIB} ${COMPILER_LIBCXX}

COMPILER=	base-clang ports-gcc

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

MODPY_TEST_DIR=	${WRKSRC}/build/lib*
FIX_CRLF_FILES=	numexpr/tests/test_numexpr.py

RUN_DEPENDS=	math/py-numpy \
		sysutils/py-packaging
BUILD_DEPENDS=	${RUN_DEPENDS}
TEST_DEPENDS=	devel/py-test-run-parallel

.include <bsd.port.mk>

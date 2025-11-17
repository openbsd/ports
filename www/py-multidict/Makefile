COMMENT=	multidict implementation

MODPY_DISTV=	6.7.0
DISTNAME=	multidict-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	www devel

WANTLIB +=	pthread ${MODPY_WANTLIB}

# Apache2
PERMIT_PACKAGE=	Yes

# -std=c11
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

MODPY_TEST_LINK_SO= Yes
TEST_DEPENDS=	devel/py-test-codspeed \
		devel/py-test-cov \
		devel/py-objgraph
# needed for tests/test_circular_imports.py
TEST_DEPENDS+=	${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>

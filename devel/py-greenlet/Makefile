COMMENT=	lightweight in-process concurrent programming

MODPY_EGG_VERSION= 1.1.3
DISTNAME=	greenlet-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	1

CATEGORIES=	devel

# BSD-like
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB} pthread m

COMPILER=	base-clang ports-gcc

MODPY_PI=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

MODPY_TEST_DIR=	${WRKSRC}/build/lib*
MODPY_PYTEST_ARGS= ..
TEST_DEPENDS=	devel/py-objgraph${MODPY_FLAVOR}

INCL_DIR=	${MODPY_INCDIR:S/${LOCALBASE}\///}
SUBST_VARS=	INCL_DIR

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}greenlet
	${INSTALL_DATA} ${WRKSRC}/README.rst \
		${PREFIX}/share/doc/${MODPY_PY_PREFIX}greenlet

.include <bsd.port.mk>

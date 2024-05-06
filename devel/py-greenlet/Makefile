COMMENT=	lightweight in-process concurrent programming

MODPY_EGG_VERSION= 3.0.3
DISTNAME=	greenlet-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

# BSD-like
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB} pthread m

# TLS
COMPILER=	base-clang ports-gcc

MODPY_PI=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

# some exception-handling tests seem to be expected to abort Python
# which is a bit noisy in test output but those tests don't fail
TEST_DEPENDS=	devel/py-objgraph${MODPY_FLAVOR} \
		sysutils/py-psutil${MODPY_FLAVOR}

# disable leak tests which try to look up USS via psutil (not on BSDs)
MODPY_PYTEST_ARGS+= -k 'not test_untracked_memory_doesnt_increase and \
	not test_untracked_memory_doesnt_increase_unfinished_thread_dealloc_in_main and \
	not test_untracked_memory_doesnt_increase_unfinished_thread_dealloc_in_thread'

# allow finding .so; disable test_version which relies on setup.py
MODPY_PYTEST_ARGS+= --ignore greenlet/tests/test_version.py ..
MODPY_TEST_DIR=	${WRKSRC}/build/lib*

INCL_DIR=	${MODPY_INCDIR:S/${LOCALBASE}\///}
SUBST_VARS=	INCL_DIR

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}greenlet
	${INSTALL_DATA} ${WRKSRC}/README.rst \
		${PREFIX}/share/doc/${MODPY_PY_PREFIX}greenlet

.include <bsd.port.mk>

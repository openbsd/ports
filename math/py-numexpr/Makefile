# $OpenBSD: Makefile,v 1.16 2021/11/02 00:01:36 sthen Exp $

COMMENT =		fast numerical expression evaluator for NumPy

MODPY_EGG_VERSION =	2.7.3
DISTNAME =		numexpr-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math
REVISION =		0

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		m pthread ${MODPY_WANTLIB} ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc

MODULES =		lang/python
FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	${TESTLIBDIR}

# some path error with tests,
# ModuleNotFoundError: No module named 'numexpr.interpreter'
# running those tests by hand from the shell does seem to work
TESTLIBDIR =	lib.openbsd-${OSREV}-${ARCH}-${MODPY_VERSION}/numexpr/
TEST_ENV =	PYTHONPATH=${WRKSRC}/${TESTLIBDIR}

RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR}
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.12 2020/07/03 21:12:57 sthen Exp $

COMMENT =		fast numerical expression evaluator for NumPy

MODPY_EGG_VERSION =	2.6.4
DISTNAME =		numexpr-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math
REVISION =		3

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		m pthread ${MODPY_WANTLIB} ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	${TESTLIBDIR}

TESTLIBDIR =	lib.openbsd-${OSREV}-${ARCH}-${MODPY_VERSION}/numexpr/

TEST_ENV =	PYTHONPATH=${WRKSRC}/${TESTLIBDIR}

RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR}
BUILD_DEPENDS =		${RUN_DEPENDS}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>

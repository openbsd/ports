# $OpenBSD: Makefile,v 1.9 2019/07/12 20:47:46 sthen Exp $

COMMENT =		fast numerical expression evaluator for NumPy

MODPY_EGG_VERSION =	2.6.4
DISTNAME =		numexpr-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math
REVISION =		2

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		m pthread ${MODPY_WANTLIB} ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR}
BUILD_DEPENDS =		${RUN_DEPENDS}

FLAVORS =		python3
FLAVOR ?=

do-test: fake
	PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} -c \
	    "import numexpr; numexpr.test()"

.include <bsd.port.mk>

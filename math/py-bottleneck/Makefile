# $OpenBSD: Makefile,v 1.9 2020/02/06 12:26:54 martin Exp $

COMMENT =		fast NumPy array functions written in C

MODPY_EGG_VERSION =	1.3.1
DISTNAME =		Bottleneck-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
CATEGORIES =		math

MAINTAINER =		Martin Reindl <martin@catai.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODPY_WANTLIB} pthread

# ICE with base-gcc
COMPILER =		base-clang ports-gcc

MODULES =		lang/python

RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR}
BUILD_DEPENDS =		${RUN_DEPENDS}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

MODPY_PYTEST =	Yes
TEST_DEPENDS =	devel/py-pluggy${MODPY_FLAVOR} \
		devel/py-nose${MODPY_FLAVOR} \
		devel/py-test${MODPY_FLAVOR}

# on python2 with base-clang, test_memory_leak fails
pre-test:
	@${MODPY_CMD} build_ext --inplace

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -c "import bottleneck; bottleneck.test()"

.include <bsd.port.mk>

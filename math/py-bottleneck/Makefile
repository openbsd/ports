COMMENT =		fast NumPy array functions written in C

MODPY_DISTV =		1.4.2
DISTNAME =		bottleneck-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:L}
CATEGORIES =		math
REVISION =		1

MAINTAINER =		Martin Reindl <martin@catai.org>

# BSD
PERMIT_PACKAGE =	Yes

# ICE with base-gcc
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODULES =		lang/python

RUN_DEPENDS =		math/py-numpy
BUILD_DEPENDS =		${RUN_DEPENDS}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

MODPY_PYTEST =	Yes
TEST_DEPENDS =	devel/py-pluggy \
		devel/py-nose \
		devel/py-test

pre-test:
	@${MODPY_CMD} build_ext --inplace

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -c "import bottleneck; bottleneck.test()"

.include <bsd.port.mk>

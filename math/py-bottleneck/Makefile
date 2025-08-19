COMMENT =		fast NumPy array functions written in C

MODPY_DISTV =		1.5.0
DISTNAME =		bottleneck-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:L}
REVISION =		0

CATEGORIES =		math

MAINTAINER =		Martin Reindl <martin@catai.org>

# BSD
PERMIT_PACKAGE =	Yes

# ICE with base-gcc
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

MODPY_TEST_DIR =	${WRKINST}${MODPY_SITEPKG}

BUILD_DEPENDS =		devel/py-versioneer \
			math/py-numpy

RUN_DEPENDS =		math/py-numpy

TEST_DEPENDS =		devel/py-pluggy

.include <bsd.port.mk>

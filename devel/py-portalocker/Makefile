COMMENT =	easy Python API to file locking

MODPY_DISTV =	2.6.0
REVISION =	2

DISTNAME =	portalocker-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

MAINTAINER =	Moritz Buhl <mbuhl@openbsd.org>

HOMEPAGE =	https://github.com/WoLpH/portalocker

# BSD
PERMIT_PACKAGE = Yes

MODULES =	lang/python
MODPY_PI =	Yes

MODPY_PYBUILD =	setuptools
TEST_DEPENDS =	devel/py-test-cov \
		devel/py-test-timeout \
		textproc/py-sphinx \
		databases/py-redis

.include <bsd.port.mk>

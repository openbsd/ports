COMMENT =	easy Python API to file locking

MODPY_EGG_VERSION =	2.6.0
REVISION =	1

DISTNAME =	portalocker-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

MAINTAINER =	Moritz Buhl <mbuhl@openbsd.org>

HOMEPAGE =	https://github.com/WoLpH/portalocker

# BSD
PERMIT_PACKAGE = Yes

MODULES =	lang/python
MODPY_PI =	Yes

FLAVOR =	python3
FLAVORS =	python3

MODPY_PYBUILD =	setuptools
TEST_DEPENDS =	devel/py-test-cov${MODPY_FLAVOR} \
		devel/py-test-timeout${MODPY_FLAVOR} \
		textproc/py-sphinx${MODPY_FLAVOR} \
		databases/py-redis${MODPY_FLAVOR}

.include <bsd.port.mk>

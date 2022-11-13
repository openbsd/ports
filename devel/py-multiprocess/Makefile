COMMENT =		better multiprocessing and multithreading in python

MODPY_EGG_VERSION =	0.70.13
DISTNAME =		multiprocess-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		https://github.com/uqfoundation/multiprocess

MAINTAINER =		Paul Irofti <paul@irofti.net>

# Apache v2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-dill${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

NO_TEST =		Yes
# needs "test.support" from somewhere..?
MODPY_PYTEST_ARGS =	py${MODPY_VERSION}/multiprocess/tests

FLAVORS =               python3
FLAVOR =                python3

.include <bsd.port.mk>

COMMENT =		standalone version of Django's feedgenerator

MODPY_EGG_VERSION =	1.9.1
DISTNAME =		feedgenerator-${MODPY_EGG_VERSION}
PKGNAME =		py-feedgenerator-${MODPY_EGG_VERSION}
REVISION =		5

CATEGORIES =		www textproc


MAINTAINER =		Vladimir D. Seleznev <vseleznv@cs.msu.ru>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	tests_feedgenerator/

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			devel/py-tz${MODPY_FLAVOR}

.include <bsd.port.mk>

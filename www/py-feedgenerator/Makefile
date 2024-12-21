COMMENT =		standalone version of Django's feedgenerator

MODPY_DISTV =	1.9.1
DISTNAME =		feedgenerator-${MODPY_DISTV}
PKGNAME =		py-feedgenerator-${MODPY_DISTV}
REVISION =		6

CATEGORIES =		www textproc

MAINTAINER =		Vladimir D. Seleznev <vseleznv@cs.msu.ru>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	tests_feedgenerator/

RUN_DEPENDS =		devel/py-six \
			devel/py-tz

.include <bsd.port.mk>

COMMENT =		test fixtures replacement for Python

MODPY_DISTV =		3.3.3

DISTNAME =		factory_boy-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_/-/}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/FactoryBoy/factory_boy

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-faker

TEST_DEPENDS =		databases/py-flask-sqlalchemy

.include <bsd.port.mk>

COMMENT =		Python module to retry code until it succeeds

MODPY_DISTV =	8.0.1
DISTNAME =		tenacity-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		3

MAINTAINER =		Mikolaj Kucharski <mikolaj@kucharski.name>

CATEGORIES =		devel

HOMEPAGE =		https://github.com/jd/tenacity

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools_scm
MODPY_PI =		Yes

# one test fails if typeguard is missing (currently not in ports)
TEST_DEPENDS =		www/py-tornado

.include <bsd.port.mk>

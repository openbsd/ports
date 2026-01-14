COMMENT =		NetBox API client library

MODPY_DISTV =		7.6.0
DISTNAME =		pynetbox-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		sysutils net

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# Apache2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =		setuptools_scm
MODPY_PI =		Yes
MODPY_PYTEST_ARGS =	--ignore=tests/integration tests

RUN_DEPENDS =		sysutils/py-packaging \
			www/py-requests

.include <bsd.port.mk>

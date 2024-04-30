COMMENT =		NetBox API client library

MODPY_EGG_VERSION =	7.3.3
DISTNAME =		pynetbox-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		sysutils net

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# Apache2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =		setuptools_scm
MODPY_PI =		Yes
MODPY_PYTEST_ARGS =	--ignore=tests/integration tests

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		sysutils/py-packaging${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>

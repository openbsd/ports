COMMENT =		Python client library for Hashicorp Vault

MODPY_EGG_VERSION =	1.1.0
DISTNAME =		hvac-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

MAINTAINER =		Mikolaj Kucharski <mikolaj@kucharski.name>

CATEGORIES =		security

HOMEPAGE =		https://github.com/hvac/hvac

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		poetry-core
MODPY_PI =		Yes

RUN_DEPENDS =		www/py-requests${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>

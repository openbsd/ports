COMMENT =		simple DNS resolver for asyncio

MODPY_DISTV =	3.2.0
DISTNAME =		aiodns-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net
REVISION =		0

HOMEPAGE =		https://github.com/aio-libs/aiodns

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	tests.py

RUN_DEPENDS =		net/py-cares>=4.0.0

.include <bsd.port.mk>

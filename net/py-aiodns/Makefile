COMMENT =		simple DNS resolver for asyncio

MODPY_DISTV =		4.0.4
DISTNAME =		aiodns-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net

HOMEPAGE =		https://github.com/aio-libs/aiodns

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		net/py-cares>=5.0.0
RUN_DEPENDS =		net/py-cares>=5.0.0
TEST_DEPENDS =		devel/py-test-asyncio

.include <bsd.port.mk>

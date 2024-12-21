COMMENT =		transparent persistent cache for the py-requests library
MODPY_DISTV =	0.5.2
DISTNAME =		requests-cache-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		www
REVISION =		5

HOMEPAGE =		https://github.com/reclosedev/requests-cache
MAINTAINER =		Johan Huldtgren <jhuldtgren@gmail.com>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

# tests require network

RUN_DEPENDS =		www/py-requests>=1.1.0

TEST_DEPENDS =		devel/py-mock

.include <bsd.port.mk>

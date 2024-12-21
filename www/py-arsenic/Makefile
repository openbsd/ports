COMMENT =		asynchronous WebDriver client

MODPY_DISTV =	21.8

DISTNAME =		arsenic-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		https://github.com/HENNGE/arsenic/

# Apache-2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		poetry-core

RUN_DEPENDS =		devel/py-attrs \
			devel/py-structlog \
			www/py-aiohttp

.include <bsd.port.mk>

COMMENT =		asynchronous WebDriver client for Wapiti

MODPY_DISTV =		28.2

DISTNAME =		wapiti_arsenic-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://github.com/wapiti-scanner/arsenic/

# Apache-2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		poetry-core

RUN_DEPENDS =		devel/py-attrs \
			devel/py-structlog \
			sysutils/py-packaging \
			www/py-aiohttp

.include <bsd.port.mk>

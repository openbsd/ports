COMMENT =		asynchronous WebDriver client

MODPY_EGG_VERSION =	21.8

DISTNAME =		arsenic-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://github.com/HENNGE/arsenic/

# Apache-2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		poetry-core

RUN_DEPENDS =		devel/py-attrs${MODPY_FLAVOR} \
			devel/py-structlog${MODPY_FLAVOR} \
			www/py-aiohttp${MODPY_FLAVOR}

.include <bsd.port.mk>

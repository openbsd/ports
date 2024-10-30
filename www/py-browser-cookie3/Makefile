COMMENT =		module loads cookies used by your web into cookiejar

MODPY_EGG_VERSION =	0.19.1

DISTNAME =		browser-cookie3-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://github.com/borisbabic/browser_cookie3

# LGPL3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		archivers/py-lz4${MODPY_FLAVOR} \
			devel/py-jeepney${MODPY_FLAVOR} \
			security/py-cryptodomex${MODPY_FLAVOR}

TEST_IS_INTERACTIVE =	uses selenium and webdriver_manager

.include <bsd.port.mk>

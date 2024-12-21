COMMENT =		module loads cookies used by your web into cookiejar

MODPY_DISTV =	0.19.1

DISTNAME =		browser-cookie3-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		https://github.com/borisbabic/browser_cookie3

# LGPL3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		archivers/py-lz4 \
			devel/py-jeepney \
			security/py-cryptodomex

TEST_IS_INTERACTIVE =	uses selenium and webdriver_manager

.include <bsd.port.mk>

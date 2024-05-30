COMMENT =		interface with Tuya WiFi smart devices

MODPY_EGG_VERSION =	1.14.0
GH_ACCOUNT =		jasonacox
GH_PROJECT =		tinytuya
GH_TAGNAME =		v${MODPY_EGG_VERSION}

DISTNAME =		tinytuya-${MODPY_EGG_VERSION}
PKGNAME =		py-tinytuya-${MODPY_EGG_VERSION}

CATEGORIES =		net

HOMEPAGE =		https://github.com/jasonacox/tinytuya

MAINTAINER =		Martin Reindl <martin@catai.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-colorama${MODPY_FLAVOR} \
			security/py-cryptodome${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}
BUILD_DEPENDS =		${RUN_DEPENDS}

# tests require actual devices and editing the test file
NO_TEST = 		Yes

.include <bsd.port.mk>

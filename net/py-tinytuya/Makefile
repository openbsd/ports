COMMENT =		interface with Tuya WiFi smart devices

MODPY_DISTV =	1.15.1
GH_ACCOUNT =		jasonacox
GH_PROJECT =		tinytuya
GH_TAGNAME =		v${MODPY_DISTV}

DISTNAME =		tinytuya-${MODPY_DISTV}
PKGNAME =		py-tinytuya-${MODPY_DISTV}
REVISION =		0

CATEGORIES =		net

HOMEPAGE =		https://github.com/jasonacox/tinytuya

MAINTAINER =		Martin Reindl <martin@catai.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-colorama \
			security/py-cryptodome \
			security/py-cryptography \
			www/py-requests
BUILD_DEPENDS =		${RUN_DEPENDS}

# tests require actual devices and editing the test file
NO_TEST = 		Yes

.include <bsd.port.mk>

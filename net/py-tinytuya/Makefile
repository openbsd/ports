# $OpenBSD: Makefile,v 1.7 2021/11/02 00:01:42 sthen Exp $

COMMENT =		interface with Tuya WiFi smart devices

MODPY_EGG_VERSION =	1.2.9
DISTNAME =		tinytuya-${MODPY_EGG_VERSION}
PKGNAME =		py-tinytuya-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		net

HOMEPAGE =		https://github.com/jasonacox/tinytuya

MAINTAINER =		Martin Reindl <martin@catai.org>

# MIT
PERMIT_PACKAGE =	Yes

GH_ACCOUNT =		jasonacox
GH_PROJECT =		tinytuya
GH_TAGNAME =		v${MODPY_EGG_VERSION}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		security/py-cryptodome${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

RUN_DEPENDS =		security/py-cryptodome${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

# tests require actual devices and editing the test file
NO_TEST = 		Yes

.include <bsd.port.mk>

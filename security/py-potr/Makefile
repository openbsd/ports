# $OpenBSD: Makefile,v 1.10 2021/10/24 09:28:50 sthen Exp $

COMMENT =		pure Python Off-The-Record encryption

MODPY_EGG_VERSION =	1.0.1
DISTNAME =		python-potr-${MODPY_EGG_VERSION}
PKGNAME =		py-potr-${MODPY_EGG_VERSION}
CATEGORIES =		security net
REVISION =		7

# LGPLv3
PERMIT_PACKAGE =	Yes

EXTRACT_SUFX =		.zip

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		security/py-cryptodome${MODPY_FLAVOR}

.include <bsd.port.mk>

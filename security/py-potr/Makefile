# $OpenBSD: Makefile,v 1.7 2020/07/03 21:13:07 sthen Exp $

COMMENT =		pure Python Off-The-Record encryption

MODPY_EGG_VERSION =	1.0.1
DISTNAME =		python-potr-${MODPY_EGG_VERSION}
PKGNAME =		py-potr-${MODPY_EGG_VERSION}
CATEGORIES =		security net
REVISION =		4

MAINTAINER =		Daniel Jakots <obsd@chown.me>

# LGPLv3
PERMIT_PACKAGE =	Yes

EXTRACT_SUFX =		.zip

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		security/py-cryptodome${MODPY_FLAVOR}

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.8 2021/11/14 11:55:25 sthen Exp $

COMMENT =		dot-accessible dictionary (a la JavaScript objects)

MODPY_EGG_VERSION =	2.5.0
DISTNAME =		munch-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		devel/py-pbr${MODPY_FLAVOR}

.include <bsd.port.mk>

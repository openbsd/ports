# $OpenBSD: Makefile,v 1.6 2021/11/02 00:01:13 sthen Exp $

COMMENT =		library for creating a custom Minecraft launcher

MODPY_EGG_VERSION =	2.1
REVISION =		1

DISTNAME =		minecraft-launcher-lib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		games

HOMEPAGE =		https://gitlab.com/JakobDev/minecraft-launcher-lib

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		www/py-requests${MODPY_FLAVOR}
RUN_DEPENDS =		www/py-requests${MODPY_FLAVOR}

# No tests in the upstream library
NO_TEST =		Yes

.include <bsd.port.mk>

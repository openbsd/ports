# $OpenBSD: Makefile,v 1.5 2019/07/04 19:02:14 kmos Exp $

COMMENT =		calculations for the position of the sun and the moon

MODPY_EGG_VERSION =	1.10.1
DISTNAME =		astral-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		astro

HOMEPAGE =		https://astral.readthedocs.org

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# Apache License 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

BUILD_DEPENDS =		devel/py-tz${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-tz${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>

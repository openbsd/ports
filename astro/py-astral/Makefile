# $OpenBSD: Makefile,v 1.7 2020/08/07 06:40:46 martin Exp $

COMMENT =		calculations for the position of the sun and the moon

MODPY_EGG_VERSION =	2.2
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

RUN_DEPENDS =		devel/py-tz${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-freezegun${MODPY_FLAVOR}

TEST_ENV +=		PYTHONPATH=${WRKSRC}/lib/

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>

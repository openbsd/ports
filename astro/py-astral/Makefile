# $OpenBSD: Makefile,v 1.4 2019/04/28 20:51:26 sthen Exp $

COMMENT =		calculations for the position of the sun and the moon

MODPY_EGG_VERSION =	1.4
DISTNAME =		astral-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
EXTRACT_SUFX =		.zip
REVISION =		0

CATEGORIES =		astro

HOMEPAGE =		https://astral.readthedocs.org

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# Apache License 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

BUILD_DEPENDS =		devel/py-tz${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-tz${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>

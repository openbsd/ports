# $OpenBSD: Makefile,v 1.2 2018/01/20 20:00:58 kili Exp $

COMMENT =		calculations for the position of the sun and the moon

MODPY_EGG_VERSION =	1.4
DISTNAME =		astral-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
EXTRACT_SUFX =		.zip

CATEGORIES =		astro

HOMEPAGE =		https://astral.readthedocs.org

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# Apache License 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		devel/py-tz${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-tz${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-test${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

do-test:
			cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>

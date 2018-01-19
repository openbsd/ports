# $OpenBSD: Makefile,v 1.1.1.1 2018/01/19 21:53:46 jung Exp $

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

RUN_DEPENDS =		devel/py-tz${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-test${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

do-test:
			cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>

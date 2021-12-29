# $OpenBSD: Makefile,v 1.3 2021/12/29 14:23:39 sthen Exp $

COMMENT =	computes positions for the stars, planets, and satellites

MODPY_EGG_VERSION =	1.41

DISTNAME =	skyfield-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	astro

HOMEPAGE =	http://github.com/brandon-rhodes/python-skyfield/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
# tests require "assay"
NO_TEST =	Yes

FLAVORS =	python3
FLAVOR =	python3

RUN_DEPENDS =	astro/py-jplephem${MODPY_FLAVOR} \
		astro/py-sgp4${MODPY_FLAVOR} \
		math/py-numpy${MODPY_FLAVOR}

.include <bsd.port.mk>

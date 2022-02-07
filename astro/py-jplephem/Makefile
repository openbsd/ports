# $OpenBSD: Makefile,v 1.2 2022/02/07 09:03:24 sthen Exp $

FIX_EXTRACT_PERMISSIONS =	Yes

COMMENT =	use a JPL ephemeris to predict planet positions

MODPY_EGG_VERSION =	2.17

DISTNAME =	jplephem-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	astro

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYTEST_ARGS = jplephem/test.py

FLAVORS =	python3
FLAVOR =	python3

RUN_DEPENDS =	math/py-numpy${MODPY_FLAVOR}
TEST_DEPENDS =	astro/py-de421${MODPY_FLAVOR}
# tests also require the following download to WRKSRC:
# https://naif.jpl.nasa.gov/pub/naif/generic_kernels/spk/planets/a_old_versions/de405.bsp
# https://naif.jpl.nasa.gov/pub/naif/generic_kernels/spk/planets/a_old_versions/de421.bsp

.include <bsd.port.mk>

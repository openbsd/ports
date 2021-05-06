# $OpenBSD: Makefile,v 1.1 2021/05/06 15:09:25 kettenis Exp $

COMMENT =	community-developed python astronomy tools

MODPY_EGG_VERSION =	4.0.5

DISTNAME =	astropy-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	astro

HOMEPAGE =	http://astropy.org

# BSD license
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

NO_TEST =		Yes

BUILD_DEPENDS =		math/py-numpy${MODPY_FLAVOR}
RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR}

.include <bsd.port.mk>

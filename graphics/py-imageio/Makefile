# $OpenBSD: Makefile,v 1.6 2021/11/02 00:01:16 sthen Exp $

COMMENT =		io for scientific data formats

MODPY_EGG_VERSION =	2.6.1
DISTNAME =		imageio-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		graphics
REVISION =		3

MAINTAINER =		Paul Irofti <paul@irofti.net>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR} \
			graphics/py-Pillow${MODPY_FLAVOR}

TEST_DEPENDS =		sysutils/py-psutil${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

.include <bsd.port.mk>

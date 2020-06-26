# $OpenBSD: Makefile,v 1.2 2020/06/26 10:01:42 pirofti Exp $

COMMENT =		io for scientific data formats

MODPY_EGG_VERSION =	2.6.1
DISTNAME =		imageio-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		graphics

MAINTAINER =		Paul Irofti <paul@irofti.net>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR} \
			graphics/py-Pillow${MODPY_FLAVOR}

TEST_DEPENDS =		sysutils/py-psutil${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

.include <bsd.port.mk>

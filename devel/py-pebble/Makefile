# $OpenBSD: Makefile,v 1.1.1.1 2020/08/13 07:32:23 bket Exp $

COMMENT =		threading and multiprocessing eye-candy

MODPY_EGG_VERSION =	4.5.3
DISTNAME =		Pebble-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/noxdafox/pebble

# LGPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.2 2021/11/02 00:00:59 sthen Exp $

COMMENT =		threading and multiprocessing eye-candy

MODPY_EGG_VERSION =	4.5.3
DISTNAME =		Pebble-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
REVISION =		0

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

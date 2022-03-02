# $OpenBSD: Makefile,v 1.3 2022/03/02 05:39:33 daniel Exp $

COMMENT =		threading and multiprocessing eye-candy

MODPY_EGG_VERSION =	4.6.3
DISTNAME =		Pebble-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/noxdafox/pebble

# LGPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

.include <bsd.port.mk>

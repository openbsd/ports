# $OpenBSD: Makefile,v 1.1.1.1 2015/03/15 10:16:40 jasper Exp $

COMMENT =		wrapper around terminal coloring, styling, and positioning

MODPY_EGG_VERSION =	1.6
DISTNAME =		blessings-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=b/blessings/}

TEST_DEPENDS =		devel/py-nose

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.1.1.1 2015/03/15 10:17:16 jasper Exp $

COMMENT =		curses-like terminal wrapper

MODPY_EGG_VERSION =	0.1.19
DISTNAME =		curtsies-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=c/curtsies/}

RUN_DEPENDS =		devel/py-blessings

.include <bsd.port.mk>

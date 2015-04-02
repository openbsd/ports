# $OpenBSD: Makefile,v 1.2 2015/04/02 14:21:14 jasper Exp $

COMMENT =		curses-like terminal wrapper

MODPY_EGG_VERSION =	0.1.19
DISTNAME =		curtsies-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

MODPY_PI =		Yes

RUN_DEPENDS =		devel/py-blessings

.include <bsd.port.mk>

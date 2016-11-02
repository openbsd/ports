# $OpenBSD: Makefile,v 1.6 2016/11/02 22:38:09 jasper Exp $

COMMENT =		curses-like terminal wrapper

MODPY_EGG_VERSION =	0.2.11
DISTNAME =		curtsies-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

MODPY_PI =		Yes

RUN_DEPENDS =		devel/py-blessings \
			devel/py-wcwidth

.include <bsd.port.mk>

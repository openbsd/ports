# $OpenBSD: Makefile,v 1.3 2015/09/29 10:51:53 sthen Exp $

COMMENT =		curses-like terminal wrapper

MODPY_EGG_VERSION =	0.1.19
DISTNAME =		curtsies-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

MODPY_PI =		Yes

RUN_DEPENDS =		devel/py-blessings

.include <bsd.port.mk>

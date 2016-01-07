# $OpenBSD: Makefile,v 1.5 2016/01/07 21:35:28 jasper Exp $

PORTROACH =		limit:^0\.1
PORTROACH_COMMENT =	devel/bpython requires curtsies < 0.2.0

COMMENT =		curses-like terminal wrapper

MODPY_EGG_VERSION =	0.1.19
DISTNAME =		curtsies-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		1

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

MODPY_PI =		Yes

RUN_DEPENDS =		devel/py-blessings

.include <bsd.port.mk>

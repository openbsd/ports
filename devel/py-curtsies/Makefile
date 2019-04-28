# $OpenBSD: Makefile,v 1.8 2019/04/28 20:51:32 sthen Exp $

COMMENT =		curses-like terminal wrapper

MODPY_EGG_VERSION =	0.2.11
DISTNAME =		curtsies-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1
CATEGORIES =		devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-blessings${MODPY_FLAVOR} \
			devel/py-wcwidth${MODPY_FLAVOR}

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.9 2019/07/12 20:45:47 sthen Exp $

COMMENT =		curses-like terminal wrapper

MODPY_EGG_VERSION =	0.2.11
DISTNAME =		curtsies-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1
CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-blessings${MODPY_FLAVOR} \
			devel/py-wcwidth${MODPY_FLAVOR}

.include <bsd.port.mk>

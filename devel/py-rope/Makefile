# $OpenBSD: Makefile,v 1.15 2021/11/02 00:01:01 sthen Exp $

COMMENT =		refactoring library

MODPY_EGG_VERSION =	0.18.0
DISTNAME =		rope-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/python-rope/rope

MAINTAINER =		Elias M. Mariani <marianielias@gmail.com>

# LGPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =          Yes

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>

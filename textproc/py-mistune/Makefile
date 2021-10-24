# $OpenBSD: Makefile,v 1.12 2021/10/24 09:28:50 sthen Exp $

COMMENT =		markdown parser for Python

MODPY_EGG_VERSION =	0.8.4
DISTNAME =		mistune-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/lepture/mistune

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.9 2020/07/03 21:13:14 sthen Exp $

COMMENT =		markdown parser for Python

MODPY_EGG_VERSION =	0.7.4
DISTNAME =		mistune-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/lepture/mistune

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>

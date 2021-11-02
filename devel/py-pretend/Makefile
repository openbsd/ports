# $OpenBSD: Makefile,v 1.9 2021/11/02 00:00:59 sthen Exp $

COMMENT =		a library for stubbing in Python

MODPY_EGG_VERSION =	1.0.9
DISTNAME =		pretend-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		3

HOMEPAGE =		https://github.com/alex/pretend

# BSD3
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>

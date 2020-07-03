# $OpenBSD: Makefile,v 1.7 2020/07/03 21:12:48 sthen Exp $

COMMENT =		a library for stubbing in Python

MODPY_EGG_VERSION =	1.0.9
DISTNAME =		pretend-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		1

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

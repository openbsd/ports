# $OpenBSD: Makefile,v 1.8 2021/05/21 19:50:28 kmos Exp $

COMMENT =		a library for stubbing in Python

MODPY_EGG_VERSION =	1.0.9
DISTNAME =		pretend-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		2

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

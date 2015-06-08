# $OpenBSD: Makefile,v 1.1.1.1 2015/06/08 10:33:14 sthen Exp $

COMMENT =		a library for stubbing in Python

MODPY_EGG_VERSION =	1.0.8
DISTNAME =		pretend-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/alex/pretend

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes
MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>

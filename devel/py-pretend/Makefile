# $OpenBSD: Makefile,v 1.4 2018/11/10 21:00:16 danj Exp $

COMMENT =		a library for stubbing in Python

MODPY_EGG_VERSION =	1.0.9
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

# $OpenBSD: Makefile,v 1.3 2017/01/03 19:19:49 landry Exp $

COMMENT =		a library for stubbing in Python

MODPY_EGG_VERSION =	1.0.8
DISTNAME =		pretend-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		1

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

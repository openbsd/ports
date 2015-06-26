# $OpenBSD: Makefile,v 1.1.1.1 2015/06/26 07:34:01 landry Exp $

COMMENT =		library for stubbing in Python

MODPY_EGG_VERSION =	1.8.1
DISTNAME =		pytest-cov-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel

HOMEPAGE =		https://pypi.python.org/pypi/pytest-cov

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes
MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>

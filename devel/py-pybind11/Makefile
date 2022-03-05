# $OpenBSD: Makefile,v 1.7 2022/03/05 19:45:37 daniel Exp $

COMMENT =		headers for interoperability between C++ and Python

MODPY_EGG_VERSION =	2.9.1
DISTNAME =		pybind11-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =	python3
FLAVOR  =	python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
NO_TEST =		Yes

.include <bsd.port.mk>

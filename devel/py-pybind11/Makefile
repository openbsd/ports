# $OpenBSD: Makefile,v 1.3 2020/11/26 05:38:13 daniel Exp $

COMMENT =		headers for interoperability between C++ and Python

MODPY_EGG_VERSION =	2.6.1
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

.include <bsd.port.mk>

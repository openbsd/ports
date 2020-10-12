# $OpenBSD: Makefile,v 1.1.1.1 2020/10/12 21:29:58 daniel Exp $

COMMENT =		headers for interoperability between C++ and Python

MODPY_EGG_VERSION =	2.5.0
DISTNAME =		pybind11-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR  =	python3

.include <bsd.port.mk>

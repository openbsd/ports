# $OpenBSD: Makefile,v 1.4 2021/02/14 04:00:35 daniel Exp $

COMMENT =		headers for interoperability between C++ and Python

MODPY_EGG_VERSION =	2.6.2
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

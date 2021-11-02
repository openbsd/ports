# $OpenBSD: Makefile,v 1.5 2021/11/02 00:01:00 sthen Exp $

COMMENT =		headers for interoperability between C++ and Python

MODPY_EGG_VERSION =	2.6.2
DISTNAME =		pybind11-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =	python3
FLAVOR  =	python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.7 2021/11/02 00:00:49 sthen Exp $

COMMENT =	fancy and practical functional tools

MODPY_EGG_VERSION =	1.10.2
DISTNAME =	funcy-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	3

CATEGORIES =	devel

HOMEPAGE =	https://github.com/Suor/funcy

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>

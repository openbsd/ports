# $OpenBSD: Makefile,v 1.6 2021/05/21 19:50:25 kmos Exp $

COMMENT =	fancy and practical functional tools

MODPY_EGG_VERSION =	1.10.2
DISTNAME =	funcy-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	2

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

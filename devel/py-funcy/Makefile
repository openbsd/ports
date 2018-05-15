# $OpenBSD: Makefile,v 1.2 2018/05/15 07:58:25 rpointel Exp $

COMMENT =	fancy and practical functional tools

MODPY_EGG_VERSION =	1.10.2
DISTNAME =	funcy-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/Suor/funcy

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>

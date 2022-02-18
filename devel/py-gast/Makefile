# $OpenBSD: Makefile,v 1.1.1.1 2022/02/18 13:14:24 daniel Exp $

COMMENT =	Python AST that abstracts the underlying Python version

MODPY_EGG_VERSION =	0.5.3
DISTNAME =	gast-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/serge-sans-paille/gast/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR  =	python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

.include <bsd.port.mk>

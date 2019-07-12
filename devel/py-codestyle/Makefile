# $OpenBSD: Makefile,v 1.9 2019/07/12 20:45:46 sthen Exp $

COMMENT =		python style guide checker

MODPY_EGG_VERSION =	2.3.1
DISTNAME =		pycodestyle-${MODPY_EGG_VERSION}
PKGNAME =		py-codestyle-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/PyCQA/pycodestyle

# Expat
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

post-install:
	mv ${PREFIX}/bin/pycodestyle{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>

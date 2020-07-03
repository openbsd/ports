# $OpenBSD: Makefile,v 1.11 2020/07/03 21:12:42 sthen Exp $

COMMENT =		python style guide checker

MODPY_EGG_VERSION =	2.5.0
DISTNAME =		pycodestyle-${MODPY_EGG_VERSION}
PKGNAME =		py-codestyle-${MODPY_EGG_VERSION}
REVISION =		0

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

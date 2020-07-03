# $OpenBSD: Makefile,v 1.6 2020/07/03 21:12:50 sthen Exp $

COMMENT =	Python Sorted Container Types

MODPY_EGG_VERSION =	2.1.0
DISTNAME =	sortedcontainers-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	devel

HOMEPAGE =	http://www.grantjenks.com/docs/sortedcontainers/

# Apache v2
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes

FLAVORS =	python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

# PyPI tarball doesn't currently include tests
# https://github.com/grantjenks/python-sortedcontainers/pull/130

.include <bsd.port.mk>

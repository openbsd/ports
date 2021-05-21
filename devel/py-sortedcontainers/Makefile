# $OpenBSD: Makefile,v 1.7 2021/05/21 19:50:29 kmos Exp $

COMMENT =	Python Sorted Container Types

MODPY_EGG_VERSION =	2.1.0
DISTNAME =	sortedcontainers-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	2

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

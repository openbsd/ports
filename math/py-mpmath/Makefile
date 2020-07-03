# $OpenBSD: Makefile,v 1.7 2020/07/03 21:12:57 sthen Exp $

COMMENT =		library for arbitrary-precision floating-point arithmetic

MODPY_EGG_VERSION =	1.1.0
DISTNAME =		mpmath-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math
REVISION =		0

HOMEPAGE =		http://mpmath.org/

# New BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	mpmath

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>

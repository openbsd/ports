# $OpenBSD: Makefile,v 1.8 2021/10/24 09:28:48 sthen Exp $

COMMENT =		library for arbitrary-precision floating-point arithmetic

MODPY_EGG_VERSION =	1.1.0
DISTNAME =		mpmath-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math
REVISION =		1

HOMEPAGE =		http://mpmath.org/

# New BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	mpmath

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>

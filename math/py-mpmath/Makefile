# $OpenBSD: Makefile,v 1.6 2019/09/22 15:29:26 kmos Exp $

COMMENT =		library for arbitrary-precision floating-point arithmetic

MODPY_EGG_VERSION =	1.1.0
DISTNAME =		mpmath-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math

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

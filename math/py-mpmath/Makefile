# $OpenBSD: Makefile,v 1.4 2019/05/13 19:03:52 danj Exp $

COMMENT =		library for arbitrary-precision floating-point arithmetic

MODPY_EGG_VERSION =	0.19
DISTNAME =		mpmath-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math
REVISION =		1

HOMEPAGE =		http://mpmath.org/

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	mpmath

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>

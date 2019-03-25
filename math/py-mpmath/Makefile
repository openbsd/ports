# $OpenBSD: Makefile,v 1.2 2019/03/25 14:29:52 kn Exp $

COMMENT =		library for arbitrary-precision floating-point arithmetic

MODPY_EGG_VERSION =	0.19
DISTNAME =		mpmath-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math

HOMEPAGE =		http://mpmath.org/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	mpmath

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>

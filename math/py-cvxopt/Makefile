# $OpenBSD: Makefile,v 1.3 2020/07/03 21:12:57 sthen Exp $

COMMENT =		convex optimization package

MODPY_EGG_VERSION =	1.2.3
DISTNAME =		cvxopt-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math
REVISION =		1

MAINTAINER =		Paul Irofti <paul@irofti.net>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

LIB_DEPENDS =		math/lapack \
			math/blas \
			math/suitesparse


MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.1.1.1 2020/06/26 10:14:06 pirofti Exp $

COMMENT =		convex optimization package

MODPY_EGG_VERSION =	1.2.3
DISTNAME =		cvxopt-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math

MAINTAINER =		Paul Irofti <paul@irofti.net>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

LIB_DEPENDS =		math/lapack \
			math/blas \
			math/suitesparse


MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

.include <bsd.port.mk>

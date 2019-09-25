# $OpenBSD: Makefile,v 1.1.1.1 2019/09/25 14:37:08 kmos Exp $

COMMENT =		SHA-3 implementation for Python

MODPY_EGG_VERSION =	1.0.2

DISTNAME =		pysha3-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		security

HOMEPAGE =		https://github.com/tiran/pysha3

MAINTAINER =		Clem Atis <clematis@insiberia.net>

# Python (PSF)
PERMIT_PACKAGE =	yes

WANTLIB += ${MODPY_WANTLIB} pthread

# No python3 flavor since it is a backport from Python 3.6+

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

LIB_DEPENDS =		${MODPY_LIB_DEPENDS}

.include <bsd.port.mk>

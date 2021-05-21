# $OpenBSD: Makefile,v 1.3 2021/05/21 19:50:35 kmos Exp $

COMMENT =		SHA-3 implementation for Python

MODPY_EGG_VERSION =	1.0.2

DISTNAME =		pysha3-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		security

HOMEPAGE =		https://github.com/tiran/pysha3

MAINTAINER =		Clem Atis <clematis@insiberia.net>

# Python (PSF)
PERMIT_PACKAGE =	yes

WANTLIB += ${MODPY_WANTLIB} pthread

# No python3 flavor since it is a backport from Python 3.6+

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

LIB_DEPENDS =		${MODPY_LIB_DEPENDS}

.include <bsd.port.mk>

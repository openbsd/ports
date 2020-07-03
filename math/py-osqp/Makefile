# $OpenBSD: Makefile,v 1.3 2020/07/03 21:12:57 sthen Exp $

COMMENT =		Python interface to OSQP

MODPY_EGG_VERSION =	0.6.1
DISTNAME =		osqp-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math
REVISION =		0

MAINTAINER =		Paul Irofti <paul@irofti.net>

# Apache v2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR}	\
			math/py-scipy${MODPY_FLAVOR}	\
			devel/py-future${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>

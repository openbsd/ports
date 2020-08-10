# $OpenBSD: Makefile,v 1.6 2020/08/10 07:53:59 bket Exp $

COMMENT =		Python interface to OSQP

MODPY_EGG_VERSION =	0.6.1
DISTNAME =		osqp-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math
REVISION =		2

MAINTAINER =		Paul Irofti <paul@irofti.net>

# Apache v2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

BUILD_DEPENDS =		${RUN_DEPENDS} \
			devel/cmake

RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR}	\
			math/py-scipy${MODPY_FLAVOR}	\
			devel/py-future${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=		python3

.include <bsd.port.mk>

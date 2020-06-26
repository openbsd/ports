# $OpenBSD: Makefile,v 1.1.1.1 2020/06/26 10:15:55 pirofti Exp $

COMMENT =		Python interface to SCS

MODPY_EGG_VERSION =	2.1.1-2
DISTNAME =		scs-${MODPY_EGG_VERSION}
V =			${MODPY_EGG_VERSION:S/-/./}
PKGNAME =		py-scs-${V}
CATEGORIES =		math

MAINTAINER =		Paul Irofti <paul@irofti.net>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR} \
			math/py-scipy${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>

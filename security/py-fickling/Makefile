# $OpenBSD: Makefile,v 1.3 2021/11/02 00:02:17 sthen Exp $

COMMENT =	analyze Python pickle object serializations

MODPY_EGG_VERSION = 0.0.2
DISTNAME =	fickling-${MODPY_EGG_VERSION}
PKGNAME =       py-${DISTNAME}
CATEGORIES =	security
REVISION =      0

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# LGPL 3.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR =		python3

# Only needed for python3.8, it's part of python3.9
RUN_DEPENDS +=		devel/py-astunparse${MODPY_FLAVOR}

MODPY_PYTEST =		Yes

.include <bsd.port.mk>

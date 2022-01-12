# $OpenBSD: Makefile,v 1.4 2022/01/12 10:17:13 sebastia Exp $

COMMENT =	analyze Python pickle object serializations

MODPY_EGG_VERSION = 0.0.3
DISTNAME =	fickling-${MODPY_EGG_VERSION}
PKGNAME =       py-${DISTNAME}
CATEGORIES =	security

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

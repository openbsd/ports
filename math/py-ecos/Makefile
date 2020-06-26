# $OpenBSD: Makefile,v 1.1.1.1 2020/06/26 10:12:53 pirofti Exp $

COMMENT =		Python interface to ECOS

MODPY_EGG_VERSION =	2.0.7.post1
DISTNAME =		ecos-${MODPY_EGG_VERSION}
V =			${MODPY_EGG_VERSION:S/post//}
PKGNAME =		py-ecos-${V}
CATEGORIES =		math

MAINTAINER =		Paul Irofti <paul@irofti.net>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR} \
			math/py-scipy${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.6 2020/08/19 12:25:12 ajacoutot Exp $

COMMENT =		Python interface to ECOS

MODPY_EGG_VERSION =	2.0.7.post1
DISTNAME =		ecos-${MODPY_EGG_VERSION}
V =			${MODPY_EGG_VERSION:S/post//}
PKGNAME =		py-ecos-${V}
CATEGORIES =		math
REVISION =		2

MAINTAINER =		Paul Irofti <paul@irofti.net>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR} \
			math/py-scipy${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>

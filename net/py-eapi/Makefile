# $OpenBSD: Makefile,v 1.3 2019/07/12 20:48:45 sthen Exp $

COMMENT =		Python client for Arista eAPI

MODPY_EGG_VERSION =	0.8.2
DISTNAME =		pyeapi-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/py//}
REVISION =		0

CATEGORIES =		net

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
FLAVORS =		python3
FLAVOR ?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		net/py-netaddr${MODPY_FLAVOR}

.include <bsd.port.mk>

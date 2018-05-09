# $OpenBSD: Makefile,v 1.17 2018/05/09 09:26:27 ajacoutot Exp $

COMMENT =		random assortment of WSGI servers, middleware

MODPY_EGG_VERSION =	1.0.3
DISTNAME =		flup-${MODPY_EGG_VERSION}
PKGNAME =		py-flup-${MODPY_EGG_VERSION}

CATEGORIES =		www

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

NO_TEST =		Yes

MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>

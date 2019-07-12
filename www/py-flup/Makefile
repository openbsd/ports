# $OpenBSD: Makefile,v 1.21 2019/07/12 20:51:01 sthen Exp $

COMMENT =		random assortment of WSGI servers, middleware

MODPY_EGG_VERSION =	1.0.3
DISTNAME =		flup-${MODPY_EGG_VERSION}
PKGNAME =		py-flup-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		www

# BSD
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-future
.endif

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.19 2018/05/10 14:59:23 ajacoutot Exp $

COMMENT =		random assortment of WSGI servers, middleware

MODPY_EGG_VERSION =	1.0.3
DISTNAME =		flup-${MODPY_EGG_VERSION}
PKGNAME =		py-flup-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		www

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-future
.endif

.include <bsd.port.mk>

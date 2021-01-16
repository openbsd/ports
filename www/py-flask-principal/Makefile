# $OpenBSD: Makefile,v 1.6 2021/01/16 17:26:16 abieber Exp $

COMMENT =		identity management for flask

MODPY_EGG_VERSION =	0.4.0
REVISION =		2
DISTNAME =		Flask-Principal-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

CATEGORIES =		www

HOMEPAGE =		https://pythonhosted.org/Flask-Principal/

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

RUN_DEPENDS +=		www/py-flask

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>

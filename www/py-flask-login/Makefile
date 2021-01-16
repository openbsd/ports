# $OpenBSD: Makefile,v 1.9 2021/01/16 17:26:16 abieber Exp $

COMMENT =		user session management for flask

MODPY_EGG_VERSION =	0.4.1
DISTNAME =		Flask-Login-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
REVISION =		2

CATEGORIES =		www

HOMEPAGE =		https://github.com/maxcountryman/flask-login

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

RUN_DEPENDS +=		www/py-flask${MODPY_FLAVOR}

MODPY_SETUPTOOLS =	Yes

NO_TEST =		Yes

FLAVORS +=		python3
FLAVOR ?=

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.11 2021/11/02 00:02:53 sthen Exp $

COMMENT =		user session management for flask

MODPY_EGG_VERSION =	0.4.1
DISTNAME =		Flask-Login-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
REVISION =		4

CATEGORIES =		www

HOMEPAGE =		https://github.com/maxcountryman/flask-login

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR  =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS +=		www/py-flask${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>

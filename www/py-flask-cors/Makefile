# $OpenBSD: Makefile,v 1.5 2021/11/02 00:02:53 sthen Exp $

COMMENT =		CORS handling for flask

MODPY_EGG_VERSION =	3.0.9
DISTNAME =		Flask-Cors-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		https://flask-cors.readthedocs.io/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS +=		www/py-flask${MODPY_FLAVOR}

.include <bsd.port.mk>

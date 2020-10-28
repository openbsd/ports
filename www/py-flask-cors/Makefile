# $OpenBSD: Makefile,v 1.3 2020/10/28 11:06:42 landry Exp $

COMMENT =		CORS handling for flask

MODPY_EGG_VERSION =	3.0.9
DISTNAME =		Flask-Cors-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

CATEGORIES =		www

HOMEPAGE =		https://flask-cors.readthedocs.io/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS +=		www/py-flask${MODPY_FLAVOR}

.include <bsd.port.mk>

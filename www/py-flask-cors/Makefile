# $OpenBSD: Makefile,v 1.2 2020/07/03 21:13:18 sthen Exp $

COMMENT =		CORS handling for flask

MODPY_EGG_VERSION =	3.0.8
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
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS +=		www/py-flask${MODPY_FLAVOR}

.include <bsd.port.mk>

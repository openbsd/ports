# $OpenBSD: Makefile,v 1.6 2022/02/22 04:22:23 bket Exp $

COMMENT =		CORS handling for flask

MODPY_EGG_VERSION =	3.0.9
DISTNAME =		Flask-Cors-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
REVISION =		1

CATEGORIES =		www

HOMEPAGE =		https://flask-cors.readthedocs.io/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS +=		www/py-flask${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>

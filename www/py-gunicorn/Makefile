# $OpenBSD: Makefile,v 1.10 2015/04/02 14:21:18 jasper Exp $

COMMENT =		Python WSGI HTTP server

MODPY_EGG_VERSION =	19.0.0
DISTNAME =		gunicorn-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		www

HOMEPAGE =		http://gunicorn.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-test

.include <bsd.port.mk>

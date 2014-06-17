# $OpenBSD: Makefile,v 1.9 2014/06/17 10:14:41 jasper Exp $

COMMENT =		Python WSGI HTTP server

MODPY_EGG_VERSION =	19.0.0
DISTNAME =		gunicorn-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		www

HOMEPAGE =		http://gunicorn.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=g/gunicorn/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-test

.include <bsd.port.mk>

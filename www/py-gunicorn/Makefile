# $OpenBSD: Makefile,v 1.6 2013/05/08 21:37:33 benoit Exp $

COMMENT =		Python WSGI HTTP server

MODPY_EGG_VERSION =	0.17.4
DISTNAME =		gunicorn-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		www

HOMEPAGE =		http://gunicorn.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=g/gunicorn/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =        devel/py-test

.include <bsd.port.mk>

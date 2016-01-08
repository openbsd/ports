# $OpenBSD: Makefile,v 1.12 2016/01/08 21:55:49 jasper Exp $

COMMENT =		Python WSGI HTTP server

MODPY_EGG_VERSION =	19.4.5
DISTNAME =		gunicorn-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		www

HOMEPAGE =		http://gunicorn.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-test-cov

.include <bsd.port.mk>

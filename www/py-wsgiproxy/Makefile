# $OpenBSD: Makefile,v 1.12 2015/09/29 10:53:17 sthen Exp $

COMMENT =	http proxying tools for wsgi apps

MODPY_EGG_VERSION = 0.2.2
DISTNAME =	WSGIProxy-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	2

CATEGORIES =	www devel

HOMEPAGE =	http://pythonpaste.org/wsgiproxy/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	www/py-paste

NO_TEST =	Yes

.include <bsd.port.mk>

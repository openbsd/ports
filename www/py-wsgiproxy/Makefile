# $OpenBSD: Makefile,v 1.8 2013/03/11 11:44:49 espie Exp $

COMMENT =	http proxying tools for wsgi apps

MODPY_EGG_VERSION = 0.2.2
DISTNAME =	WSGIProxy-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	www devel

HOMEPAGE =	http://pythonpaste.org/wsgiproxy/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=W/WSGIProxy/}

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	www/py-paste \
		$(MODPY_JSON)

NO_TEST =	Yes

.include <bsd.port.mk>

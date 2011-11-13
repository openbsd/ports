# $OpenBSD: Makefile,v 1.7 2011/11/13 03:54:45 fgsch Exp $

COMMENT =	http proxying tools for wsgi apps

MODPY_EGG_VERSION = 0.2.2
DISTNAME =	WSGIProxy-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	www devel

HOMEPAGE =	http://pythonpaste.org/wsgiproxy/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=W/WSGIProxy/}

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	www/py-paste \
		$(MODPY_JSON)

NO_REGRESS =	Yes

.include <bsd.port.mk>

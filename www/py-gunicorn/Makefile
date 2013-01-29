# $OpenBSD: Makefile,v 1.4 2013/01/29 07:59:22 benoit Exp $

COMMENT =		Python WSGI HTTP server

MODPY_EGG_VERSION =	0.17.2
DISTNAME =		gunicorn-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		www

HOMEPAGE =		http://gunicorn.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=g/gunicorn/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

REGRESS_DEPENDS =        devel/py-test

.include <bsd.port.mk>

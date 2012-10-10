# $OpenBSD: Makefile,v 1.2 2012/10/10 08:31:13 jasper Exp $

COMMENT =		Python WSGI HTTP server

MODPY_EGG_VERSION =	0.14.6
DISTNAME =		gunicorn-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		www

HOMEPAGE =		http://gunicorn.org/

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=g/gunicorn/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

REGRESS_DEPENDS =        devel/py-nose

.include <bsd.port.mk>

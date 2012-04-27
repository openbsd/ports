# $OpenBSD: Makefile,v 1.1.1.1 2012/04/27 09:01:31 mpi Exp $

COMMENT =		Python WSGI HTTP server

MODPY_EGG_VERSION =	0.14.2
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

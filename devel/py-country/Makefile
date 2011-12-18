# $OpenBSD: Makefile,v 1.1.1.1 2011/12/18 13:42:31 mpi Exp $

COMMENT =		country, language, currency and scripts definitions

MODPY_EGG_VERSION =	0.14.1
DISTNAME =		pycountry-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}

CATEGORIES =		devel

HOMEPAGE =		http://pypi.python.org/pypi/pycountry

# LGPL2.1
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=p/pycountry/}

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes
NO_REGRESS =		Yes

.include <bsd.port.mk>

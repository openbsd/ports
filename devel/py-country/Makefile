# $OpenBSD: Makefile,v 1.2 2013/01/05 23:15:50 benoit Exp $

COMMENT =		country, language, currency and scripts definitions

MODPY_EGG_VERSION =	0.14.7
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

EXTRACT_SUFX =		.zip

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes
NO_REGRESS =		Yes

post-configure:
			rm ${WRKSRC}/src/pycountry/db.py.orig

.include <bsd.port.mk>

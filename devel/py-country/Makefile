# $OpenBSD: Makefile,v 1.5 2013/11/18 20:42:52 benoit Exp $

COMMENT =		country, language, currency and scripts definitions

MODPY_EGG_VERSION =	1.2
DISTNAME =		pycountry-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}

CATEGORIES =		devel

HOMEPAGE =		http://pypi.python.org/pypi/pycountry

# LGPL2.1
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=p/pycountry/}

EXTRACT_SUFX =		.zip

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes
NO_TEST =		Yes

post-configure:
			rm ${WRKSRC}/src/pycountry/db.py.orig

.include <bsd.port.mk>

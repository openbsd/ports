# $OpenBSD: Makefile,v 1.3 2009/08/01 03:20:19 fgsch Exp $

COMMENT =	Python library for working with CouchDB

MODPY_EGG_VERSION = 0.6
DISTNAME =	CouchDB-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	databases devel

HOMEPAGE =	http://code.google.com/p/couchdb-python/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=C/CouchDB/}

MODULES =	lang/python

RUN_DEPENDS =	::www/py-httplib2 \
		::devel/py-simplejson

MODPY_SETUPTOOLS =	Yes

NO_REGRESS =	Yes

.include <bsd.port.mk>

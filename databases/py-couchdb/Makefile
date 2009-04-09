# $OpenBSD: Makefile,v 1.2 2009/04/09 14:45:52 fgsch Exp $

COMMENT =	Python library for working with CouchDB

MODPY_EGG_VERSION = 0.5dev_r141
DISTNAME =	CouchDB-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L:S/dev_//}p0

CATEGORIES =	databases devel

HOMEPAGE =	http://code.google.com/p/couchdb-python/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://files.lodoss.net/

MODULES =	lang/python

RUN_DEPENDS =	::www/py-httplib2 \
		::devel/py-simplejson

MODPY_SETUPTOOLS =	Yes

NO_REGRESS =	Yes

post-install:
	@rm -rf ${WRKSRC}/CouchDB.egg-info

.include <bsd.port.mk>

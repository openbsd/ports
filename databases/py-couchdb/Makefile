# $OpenBSD: Makefile,v 1.1.1.1 2009/04/04 21:02:14 fgsch Exp $

COMMENT =	Python library for working with CouchDB

MODPY_EGG_VERSION = 0.5dev_r141
DISTNAME =	CouchDB-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L:S/dev_//}

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

NO_REGRESS =	Yes

post-install:
	@rm -rf ${WRKSRC}/CouchDB.egg-info

.include <bsd.port.mk>

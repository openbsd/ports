# $OpenBSD: Makefile,v 1.8 2010/11/15 00:22:53 espie Exp $

COMMENT =	Python library for working with CouchDB

MODPY_EGG_VERSION = 0.8
DISTNAME =	CouchDB-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	databases devel

HOMEPAGE =	http://code.google.com/p/couchdb-python/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=C/CouchDB/}

MODULES =	lang/python

RUN_DEPENDS =	www/py-httplib2 \
		${MODPY_JSON}
REGRESS_DEPENDS = databases/apache-couchdb \
		  ${BASE_PKGPATH}

MODPY_SETUPTOOLS =	Yes

# To run the tests, start apache-couchdb using the default configuration.
# Alternatively, the tests will use the COUCHDB_URI environment variable
# to connect to the database.
REGRESS_IS_INTERACTIVE = Yes

post-install:
	$(INSTALL_DATA_DIR) ${PREFIX}/share/examples/py-couchdb
	${SUBST_CMD} -c ${FILESDIR}/python.ini \
	    ${PREFIX}/share/examples/py-couchdb/python.ini
	@chown ${SHAREOWN}:${SHAREGRP} \
	    ${PREFIX}/share/examples/py-couchdb/python.ini

.include <bsd.port.mk>

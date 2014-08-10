# $OpenBSD: Makefile,v 1.16 2014/08/10 09:58:04 espie Exp $

COMMENT =	Python library for working with CouchDB

MODPY_EGG_VERSION = 0.9
DISTNAME =	CouchDB-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	1

CATEGORIES =	databases devel

HOMEPAGE =	https://code.google.com/p/couchdb-python/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=C/CouchDB/}

MODULES =	lang/python

BUILD_DEPENDS =	textproc/py-sphinx
TEST_DEPENDS =	databases/apache-couchdb \
		${BASE_PKGPATH}

MODPY_SETUPTOOLS = Yes

# To run the tests, start apache-couchdb using the default configuration.
# Alternatively, the tests will use the COUCHDB_URI environment variable
# to connect to the database.
TEST_IS_INTERACTIVE = Yes

post-build:
	${MODPY_CMD} build_sphinx

post-install:
	$(INSTALL_DATA_DIR) ${PREFIX}/share/doc/py-couchdb
	cd ${WRKSRC}/doc/build/html && \
	    pax -rw * ${PREFIX}/share/doc/py-couchdb
	rm -rf ${PREFIX}/share/doc/py-couchdb/_sources
	$(INSTALL_DATA_DIR) ${PREFIX}/share/examples/py-couchdb
	${SUBST_DATA} ${FILESDIR}/python.ini \
	    ${PREFIX}/share/examples/py-couchdb/python.ini

do-test:
	@cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} ${MODPY_BIN} lib/couchdb/tests

.include <bsd.port.mk>

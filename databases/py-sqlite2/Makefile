# $OpenBSD: Makefile,v 1.14 2009/12/28 09:24:34 eric Exp $

COMMENT =	SQLite3 adapter for Python

MODPY_EGG_VERSION =	2.5.6

DISTNAME =	pysqlite-${MODPY_EGG_VERSION}
PKGNAME =	py-sqlite2-${MODPY_EGG_VERSION}
CATEGORIES =	databases devel

MAINTAINER =	Eric Faurot <eric@openbsd.org>

HOMEPAGE =	http://code.google.com/p/pysqlite/

MASTER_SITES =	http://pysqlite.googlecode.com/files/

# BSD-like
PERMIT_PACKAGE_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes

LIB_DEPENDS =	sqlite3.>=8.6::databases/sqlite3
BUILD_DEPENDS =	::textproc/py-sphinx

MODULES =	lang/python

pre-configure:
	@perl -pi -e 's|_LOCALBASE_|${LOCALBASE}|g' ${WRKSRC}/setup.cfg

post-build:
	cd ${WRKSRC} && \
		${LOCALBASE}/bin/sphinx-build -N -b text doc/sphinx \
		build/doc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-sqlite2
	${INSTALL_DATA} ${WRKSRC}/build/doc/sqlite3.txt \
		${PREFIX}/share/doc/py-sqlite2/

do-regress: fake
	@cd ${WRKDIR} && \
		${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} -c 'from pysqlite2 import test; test.test()'

.include <bsd.port.mk>

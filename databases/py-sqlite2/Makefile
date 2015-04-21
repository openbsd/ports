# $OpenBSD: Makefile,v 1.25 2015/04/21 18:40:20 sthen Exp $

COMMENT =	SQLite3 adapter for Python

MODPY_EGG_VERSION =	2.6.0

DISTNAME =	pysqlite-${MODPY_EGG_VERSION}
PKGNAME =	py-sqlite2-${MODPY_EGG_VERSION}
REVISION =	5
CATEGORIES =	databases devel

MAINTAINER =	Eric Faurot <eric@openbsd.org>

HOMEPAGE =	https://code.google.com/p/pysqlite/

MASTER_SITES =	https://pysqlite.googlecode.com/files/

# BSD-like
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread sqlite3>=8.6

BUILD_DEPENDS =	textproc/py-sphinx

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

do-test: fake
	@cd ${WRKDIR} && \
		${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} -c 'from pysqlite2 import test; test.test()'

.include <bsd.port.mk>

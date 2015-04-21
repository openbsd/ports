# $OpenBSD: Makefile,v 1.23 2015/04/21 18:40:20 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	SQLite adapter for Python

VERSION=	1.0
DISTNAME=	pysqlite-${VERSION}
PKGNAME=	py-sqlite-${VERSION}
REVISION =	8
CATEGORIES=	databases
WRKDIST=	${WRKDIR}/pysqlite

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pysqlite/}
HOMEPAGE=	http://pysqlite.org/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread sqlite>=8.6

LIB_DEPENDS =	databases/sqlite

MODULES=	lang/python

do-test: fake
	@cd ${WRKSRC}/test && ${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./all_tests.py

.include <bsd.port.mk>

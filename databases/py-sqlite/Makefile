# $OpenBSD: Makefile,v 1.21 2013/03/11 02:52:07 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	SQLite adapter for Python

VERSION=	1.0
DISTNAME=	pysqlite-${VERSION}
PKGNAME=	py-sqlite-${VERSION}
REVISION =	7
CATEGORIES=	databases
WRKDIST=	${WRKDIR}/pysqlite

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pysqlite/}
HOMEPAGE=	http://pysqlite.org/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS =	databases/sqlite
WANTLIB +=	sqlite>=8.6 ${MODPY_WANTLIB}

MODULES=	lang/python

do-test: fake
	@cd ${WRKSRC}/test && ${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./all_tests.py

.include <bsd.port.mk>


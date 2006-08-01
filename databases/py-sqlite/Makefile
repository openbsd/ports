# $OpenBSD: Makefile,v 1.11 2006/08/01 22:19:46 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	"SQLite adapter for Python"

VERSION=	1.0
DISTNAME=	pysqlite-${VERSION}
PKGNAME=	py-sqlite-${VERSION}p1
CATEGORIES=	databases
WRKDIST=	${WRKDIR}/pysqlite

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pysqlite/}
HOMEPAGE=	http://pysqlite.org/

# BSD-like
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

LIB_DEPENDS=	sqlite.>=8.6::databases/sqlite

MODULES=	lang/python

do-regress: fake
	@cd ${WRKSRC}/test && ${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./all_tests.py

.include <bsd.port.mk>


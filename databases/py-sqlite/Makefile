# $OpenBSD: Makefile,v 1.1 2004/02/18 21:10:16 djm Exp $

COMMENT=	"SQLite adapter for Python"

VERSION=	0.5.0
DISTNAME=	pysqlite-${VERSION}
PKGNAME=	py-sqlite
CATEGORIES=	databases
WRKDIST=	${WRKDIR}/pysqlite

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pysqlite/}
HOMEPAGE=	http://pysqlite.sourceforge.net/

MAINTAINER=	Damien Miller <djm@openbsd.org>

# BSD-like
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

NOT_FOR_ARCHS=		${NO_SHARE_ARCHS}

LIB_DEPENDS+=	sqlite::databases/sqlite

MODULES=	python

do-regress: fake
	@cd ${WRKSRC}/test && ${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./all_tests.py

.include <bsd.port.mk>


# $OpenBSD: Makefile,v 1.2 2004/02/24 08:43:46 xsa Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

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

LIB_DEPENDS+=	sqlite::databases/sqlite

MODULES=	python

do-regress: fake
	@cd ${WRKSRC}/test && ${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./all_tests.py

.include <bsd.port.mk>


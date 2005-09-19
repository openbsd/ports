# $OpenBSD: Makefile,v 1.2 2005/09/19 02:10:46 djm Exp $

SHARED_ONLY=	Yes

COMMENT=	"SQLite3 adapter for Python"

VERSION=	2.0.4
DISTNAME=	pysqlite-${VERSION}
PKGNAME=	${DISTNAME:S/^pysqlite/py-sqlite2/}
CATEGORIES=	databases devel

MASTER_SITES=	http://initd.org/pub/software/pysqlite/releases/2.0/${VERSION}/
HOMEPAGE=	http://pysqlite.org/

# BSD-like
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

LIB_DEPENDS=	sqlite3.8.6::databases/sqlite3

MODULES=	lang/python

pre-configure:
	cd ${WRKSRC} && \
	    sed "s|/usr/local|${LOCALBASE}|" setup.cfg | \
	    sed "s|^\(include_dirs\)=.*|\1=${LOCALBASE}/include/|" > setup.cfg_
	mv ${WRKSRC}/setup.cfg_ ${WRKSRC}/setup.cfg

do-regress: fake
	@cd ${WRKSRC}/scripts && ${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./test-pysqlite

.include <bsd.port.mk>

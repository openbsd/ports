# $OpenBSD: Makefile,v 1.3 2006/05/25 13:39:08 alek Exp $

SHARED_ONLY=	Yes

COMMENT=	"SQLite3 adapter for Python"

DISTNAME=	pysqlite-2.2.2
PKGNAME=	${DISTNAME:S/^pysqlite/py-sqlite2/}
CATEGORIES=	databases devel

MAINTAINER=	Eric Faurot <eric.faurot@gmail.com>

MASTER_SITES=	http://initd.org/pub/software/pysqlite/releases/2.2/2.2.2/
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
	@cd ${WRKSRC}/pysqlite2/test && \
		${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./regression.py

.include <bsd.port.mk>

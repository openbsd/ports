# $OpenBSD: Makefile,v 1.10 2008/01/30 17:33:13 eric Exp $

COMMENT=	SQLite3 adapter for Python

VERSION=	2.4.1
DISTNAME=	pysqlite-${VERSION}
PKGNAME=	py-sqlite2-${VERSION}
CATEGORIES=	databases devel

MAINTAINER=	Eric Faurot <eric@openbsd.org>

HOMEPAGE=	http://pysqlite.org/

MASTER_SITES=	http://initd.org/pub/software/pysqlite/releases/${VERSION:R}/${VERSION}/ \
		http://mirrors.protection.cx/~martynas/

# BSD-like
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

LIB_DEPENDS=	sqlite3.>=8.6::databases/sqlite3
REGRESS_DEPENDS=	:python-bz2-*:lang/python/${MODPY_VERSION},-bz2

SUBST_VARS=	VERSION

MODULES=	lang/python

pre-configure:
	@perl -pi -e 's|_LOCALBASE_|${LOCALBASE}|g' ${WRKSRC}/setup.cfg

do-regress: fake
	@cd ${WRKSRC}/pysqlite2/test && \
		${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./regression.py && \
		${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} -c 'from pysqlite2 import test; test.test()'

.include <bsd.port.mk>

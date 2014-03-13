# $OpenBSD: Makefile,v 1.8 2014/03/13 17:33:28 sthen Exp $

COMMENT=	apache interface for SCGI servers

REVISION=	5
DISTNAME=	scgi-1.12
PKGNAME=	mod_${DISTNAME}
CATEGORIES=	www

HOMEPAGE=	http://python.ca/scgi/
MASTER_SITES=	http://quixote.python.ca/releases/

MODULES+=	apache-module

# MIT/CNRI
PERMIT_PACKAGE_CDROM=	Yes

MODAPACHE_NAME=	scgi

NO_TEST=	Yes

WRKSRC=		${WRKDIST}/apache1

do-build:
	cd ${WRKSRC} && ${MODAPACHE_APXS} -c -o mod_scgi.so mod_scgi.c
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_scgi
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/mod_scgi
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>

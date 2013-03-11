# $OpenBSD: Makefile,v 1.7 2013/03/11 11:44:43 espie Exp $

COMMENT=	apache interface for SCGI servers

REVISION=	4
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
APXS=		/usr/sbin/apxs

WRKSRC=		${WRKDIST}/apache1

do-build:
	cd ${WRKSRC} && ${APXS} -c -o mod_scgi.so mod_scgi.c
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_scgi
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/mod_scgi
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.3 2009/06/03 00:48:51 pyr Exp $

COMMENT=	apache interface for SCGI servers

DISTNAME=	scgi-1.12
PKGNAME=	mod_${DISTNAME}p1
CATEGORIES=	www

HOMEPAGE=	http://python.ca/scgi/
MASTER_SITES=	http://quixote.python.ca/releases/

MODULES+=	apache-module

# MIT/CNRI
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODAPACHE_NAME=	scgi

NO_REGRESS=	Yes
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

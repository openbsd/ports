# $OpenBSD: Makefile,v 1.17 2002/03/21 20:35:41 espie Exp $

COMMENT=	"extract, list & test RAR archives"

DISTNAME=	unrar-2.50
CATEGORIES=	archivers
NEED_VERSION=	1.515
MASTER_SITES=	ftp://ftp.kiarchive.ru/pub/unix/arcers/

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	"may not modify"
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}

do-build:
	cd ${WRKSRC}; ${CC} ${CFLAGS} -D_UNIX unrar.c -o unrar

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unrar
	cd ${WRKSRC}; ${INSTALL_PROGRAM} unrar ${PREFIX}/bin
	cd ${WRKSRC}; ${INSTALL_MAN} readme.txt license.txt ${PREFIX}/share/doc/unrar

NO_REGRESS=	Yes

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.13 2001/03/29 11:41:48 obecian Exp $

COMMENT=	"extract, list & test RAR archives"

DISTNAME=	unrar-2.50
CATEGORIES=	archivers
NEED_VERSION=	1.364
MASTER_SITES=	ftp://ftp.kiarchive.ru/pub/unix/arcers/

MAINTAINER=	ports@openbsd.org

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

.include <bsd.port.mk>

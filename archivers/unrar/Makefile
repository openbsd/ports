# $OpenBSD: Makefile,v 1.8 2000/02/10 23:14:28 espie Exp $

DISTNAME=	unrar-2.50
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.kiarchive.ru/pub/unix/arcers/
NEED_VERSION=	1.191

NO_CDROM=	"NOFEE: can not sell"

MAINTAINER=	ports@openbsd.org

WRKDIST=	${WRKDIR}

do-build:
	@cd ${WRKSRC} && \
		${CC} ${CFLAGS} -D_UNIX unrar.c -o unrar

do-install:
	${INSTALL_DATA_DIR} \
		${PREFIX}/share/doc/unrar
	@cd ${WRKSRC} && ${INSTALL_PROGRAM} unrar ${PREFIX}/bin
	@cd ${WRKSRC} && ${INSTALL_MAN} readme.txt license.txt \
		${PREFIX}/share/doc/unrar

.include <bsd.port.mk>

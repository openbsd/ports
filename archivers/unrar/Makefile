# $OpenBSD: Makefile,v 1.7 1999/09/23 21:44:57 brad Exp $

DISTNAME=	unrar-2.50
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.kiarchive.ru/pub/unix/arcers/

NO_CDROM=	"NOFEE: can not sell"

MAINTAINER=	ports@openbsd.org

NO_WRKSUBDIR=	yes

do-build:
	@cd ${WRKSRC} && \
		${CC} ${CFLAGS} -D_UNIX unrar.c -o unrar

do-install:
	${INSTALL} -d -m 755 -o ${SHAREOWN} -g ${SHAREGRP} \
		${PREFIX}/share/doc/unrar
	@cd ${WRKSRC} && ${INSTALL_PROGRAM} unrar ${PREFIX}/bin
	@cd ${WRKSRC} && ${INSTALL_MAN} readme.txt license.txt \
		${PREFIX}/share/doc/unrar

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.6 1999/09/06 17:39:40 brad Exp $

DISTNAME=	unrar-2.50
CATEGORIES=	archivers
NO_CDROM=	"NOFEE: can not sell"
MASTER_SITES=	ftp://ftp.kiarchive.ru/pub/unix/arcers/

MAINTAINER=	ports@openbsd.org

NO_WRKSUBDIR=	yes

do-build:
	@cd ${WRKSRC} && \
		${CC} ${CFLAGS} -D_UNIX unrar.c -o unrar

do-install:
	install -d -m 755 -o ${SHAREOWN} -g ${SHAREGRP} \
		${PREFIX}/share/doc/unrar
	@cd ${WRKSRC} && ${INSTALL_PROGRAM} unrar ${PREFIX}/bin
	@cd ${WRKSRC} && ${INSTALL_MAN} readme.txt license.txt \
		${PREFIX}/share/doc/unrar

.include <bsd.port.mk>

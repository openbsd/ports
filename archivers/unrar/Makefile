# $OpenBSD: Makefile,v 1.4 1999/04/01 02:16:40 brad Exp $

DISTNAME=       unrar-2.01
CATEGORIES=	archivers
NO_CDROM=	"NOFEE: can not sell"
MASTER_SITES=   ftp://ftp.kiarchive.ru/pub/unix/arcers/
EXTRACT_SUFX=   .tgz

MAINTAINER=     ports@openbsd.org

NO_WRKSUBDIR=   Yes

do-build:
	cd ${WRKSRC} && \
		${CC} ${CFLAGS} -D_UNIX unrar.c -o unrar

do-install:
	install -d -m 755 -o ${SHAREOWN} -g ${SHAREGRP} \
		${PREFIX}/share/doc/unrar
	cd ${WRKSRC} && ${INSTALL_PROGRAM} unrar ${PREFIX}/bin
	cd ${WRKSRC} && ${INSTALL_MAN} readme.txt license.txt \
		${PREFIX}/share/doc/unrar

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.5 1999/04/01 06:20:03 brad Exp $

DISTNAME=	lunar-2.1
PKGNAME=	zh-lunar-2.1
CATEGORIES=	chinese

NO_CDROM=	"NOFEE:	Can not sell"

MAINTAINER=     ports@openbsd.org

MASTER_SITES=	ftp://ftp.ifcss.org/pub/software/unix/c-utils/  \
		ftp://ftp.edu.tw/Chinese/ifcss/software/unix/c-utils/  \
		ftp://ftp.cuhk.hk/pub/chinese/ifcss/software/unix/c-utils/

ALL_TARGET=

do-install:
	@${MKDIR} ${PREFIX}/share/chinese
	${INSTALL_PROGRAM} ${WRKSRC}/lunar ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/lunar.bitmap ${PREFIX}/share/chinese
	${INSTALL_MAN} ${WRKSRC}/${MAN1} ${PREFIX}/man/man1


.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.3 1998/10/07 05:12:28 marc Exp $
#

DISTNAME=	lunar-2.1
PKGNAME=	zh-lunar-2.1
CATEGORIES=	chinese

NO_CDROM=	"NOFEE:	Can not sell"

MAINTAINER=     joey@OpenBSD.ORG

MASTER_SITES=	ftp://ftp.ifcss.org/pub/software/unix/c-utils/  \
		ftp://ftp.edu.tw/Chinese/ifcss/software/unix/c-utils/  \
		ftp://ftp.cuhk.hk/pub/chinese/ifcss/software/unix/c-utils/

ALL_TARGET=
MAN1=		lunar.1

do-install:
	@${MKDIR} ${PREFIX}/share/chinese
	${INSTALL_PROGRAM} ${WRKSRC}/lunar ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/lunar.bitmap ${PREFIX}/share/chinese
	${INSTALL_MAN} ${WRKSRC}/${MAN1} ${PREFIX}/man/man1


.include <bsd.port.mk>

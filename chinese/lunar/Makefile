# $OpenBSD: Makefile,v 1.8 2000/02/11 01:10:00 espie Exp $

DISTNAME=	lunar-2.1
PKGNAME=	zh-lunar-2.1
CATEGORIES=	chinese

NO_CDROM=	"NOFEE:	Can not sell"

MAINTAINER=     kevlo@openbsd.org

MASTER_SITES=	ftp://ftp.ifcss.org/pub/software/unix/c-utils/  \
		ftp://ftp.edu.tw/Chinese/ifcss/software/unix/c-utils/  \
		ftp://ftp.cuhk.hk/pub/chinese/ifcss/software/unix/c-utils/

ALL_TARGET=

do-install:
	@mkdir -p ${PREFIX}/share/chinese
	${INSTALL_PROGRAM} ${WRKSRC}/lunar ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/lunar.bitmap ${PREFIX}/share/chinese
	${INSTALL_MAN} ${WRKSRC}/lunar.1 ${PREFIX}/man/man1


.include <bsd.port.mk>

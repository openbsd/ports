# $OpenBSD: Makefile,v 1.11 2000/03/30 15:17:33 kevlo Exp $

DISTNAME=	lunar-2.1
PKGNAME=	zh-lunar-2.1
CATEGORIES=	chinese

MAINTAINER=     kevlo@openbsd.org

PERMIT_PACKAGE_CDROM=	"non-commercial use only"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"non-commercial use only"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.ifcss.org/pub/software/unix/c-utils/  \
		ftp://ftp.edu.tw/Chinese/ifcss/software/unix/c-utils/  \
		ftp://ftp.cuhk.hk/pub/chinese/ifcss/software/unix/c-utils/

FAKE=			Yes
ALL_TARGET=

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/chinese
	${INSTALL_PROGRAM} ${WRKSRC}/lunar ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/lunar.bitmap ${PREFIX}/share/chinese
	${INSTALL_MAN} ${WRKSRC}/lunar.1 ${PREFIX}/man/man1


.include <bsd.port.mk>

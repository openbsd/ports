# $OpenBSD: Makefile,v 1.22 2013/03/11 01:30:26 espie Exp $

COMMENT=	convert solar calendar to lunar calendar

DISTNAME=	lunar-2.1
PKGNAME=	zh-lunar-2.1
CATEGORIES=	chinese

MASTER_SITES=   ftp://ftp.cuhk.hk/pub/chinese/ifcss/software/unix/c-utils/

MAINTAINER=     Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	non-commercial use only
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=		c

ALL_TARGET=

USE_GROFF =	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/chinese
	${INSTALL_PROGRAM} ${WRKSRC}/lunar ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/lunar.bitmap ${PREFIX}/share/chinese
	${INSTALL_MAN} ${WRKSRC}/lunar.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

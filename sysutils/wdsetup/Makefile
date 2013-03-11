# $OpenBSD: Makefile,v 1.8 2013/03/11 11:41:33 espie Exp $

COMMENT=	Western Digital and SMC ethernet card configuration program

DISTNAME=	wdsetup-0.6b
PKGNAME=	wdsetup-0.6b
CATEGORIES=	sysutils

MAINTAINER=	Todd Miller <millert@openbsd.org>

ONLY_FOR_ARCHS= i386

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=	ftp://sunsite.unc.edu/pub/Linux/system/network/drivers/

do-build:
	${CC} ${CFLAGS} -o ${WRKSRC}/wdsetup ${WRKSRC}/wdsetup.c -li386

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wdsetup ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/wdsetup.8 ${PREFIX}/man/cat8/wdsetup.0

.include <bsd.port.mk>

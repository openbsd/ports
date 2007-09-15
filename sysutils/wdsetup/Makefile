# $OpenBSD: Makefile,v 1.5 2007/09/15 21:14:03 merdely Exp $

COMMENT=	Western Digital and SMC ethernet card configuration program

DISTNAME=	wdsetup-0.6b
PKGNAME=	wdsetup-0.6b
CATEGORIES=	sysutils

MAINTAINER=	Todd Miller <millert@openbsd.org>

ONLY_FOR_ARCHS= i386

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	ftp://sunsite.unc.edu/pub/Linux/system/network/drivers/

do-build:
	${CC} ${CFLAGS} -o ${WRKSRC}/wdsetup ${WRKSRC}/wdsetup.c -li386

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wdsetup ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/wdsetup.8 ${PREFIX}/man/cat8/wdsetup.0

.include <bsd.port.mk>

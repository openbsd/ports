# $OpenBSD: Makefile,v 1.2 2002/03/21 21:25:52 espie Exp $

COMMENT=	"Western Digital and SMC ethernet card configuration program"

DISTNAME=	wdsetup-0.6b
PKGNAME=	wdsetup-0.6b
CATEGORIES=	sysutils
NEED_VERSION=	1.515

MAINTAINER=	Todd Miller <millert@openbsd.org>

ONLY_FOR_ARCHS= i386

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://sunsite.unc.edu/pub/Linux/system/network/drivers/

do-build:
	${CC} ${CFLAGS} -o ${WRKSRC}/wdsetup ${WRKSRC}/wdsetup.c -li386

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wdsetup ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/wdsetup.8 ${PREFIX}/man/cat8/wdsetup.0

.include <bsd.port.mk>

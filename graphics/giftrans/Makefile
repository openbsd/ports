# $OpenBSD: Makefile,v 1.3 1999/04/09 04:11:46 brad Exp $
# $FreeBSD: Makefile,v 1.2 1996/11/18 11:27:58 asami Exp $

DISTNAME=	giftrans
PKGNAME=        giftrans-1.12
CATEGORIES=	graphics
MASTER_SITES=   ftp://ftp.lab.kdd.co.jp/infosystems/misc/tools/

MAINTAINER=	Nakai@Mlab.t.u-tokyo.ac.jp

CONFIGURE_ENV=	X11BASE=${X11BASE}

do-build:
	(cd ${WRKSRC}; cc -O2 giftrans.c -o giftrans)

do-install:
	@ ${INSTALL_PROGRAM} ${WRKSRC}/giftrans ${PREFIX}/bin
	@ ${INSTALL_MAN} ${WRKSRC}/giftrans.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

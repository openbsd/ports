# New ports collection makefile for:   giftrans
# Version required:    v1.12
# Date created:        20 May 1998
# Whom:                Oleg Safiullin <form@OpenBSD.ORG>
#
# $OpenBSD: Makefile,v 1.2 1998/10/20 08:39:45 form Exp $
# FreeBSD: Makefile,v 1.2 1996/11/18 11:27:58 asami Exp
#

DISTNAME=	giftrans
PKGNAME=        giftrans-1.12
CATEGORIES=	graphics
MASTER_SITES=   ftp://ftp.lab.kdd.co.jp/infosystems/misc/tools/

MAINTAINER=	Nakai@Mlab.t.u-tokyo.ac.jp

CONFIGURE_ENV=	X11BASE=${X11BASE}
MAN1=		giftrans.1

do-build:
	(cd ${WRKSRC}; cc -O2 giftrans.c -o giftrans)

do-install:
	@ ${INSTALL_PROGRAM} ${WRKSRC}/giftrans ${PREFIX}/bin
	@ ${INSTALL_MAN} ${WRKSRC}/giftrans.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

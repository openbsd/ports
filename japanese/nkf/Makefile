# very loosely based on FreeBSD 2.2.7
# $OpenBSD: Makefile,v 1.2 1999/10/26 18:08:13 espie Exp $


DISTNAME=	nkf-1.62
PKGNAME=	ja-nkf-1.62
CATEGORIES=	japanese textproc
MASTER_SITES=	http://www.sfc.wide.ad.jp/~max/FreeBSD/ports/distfiles/

MAINTAINER=	espie@openbsd.org
MAKEFILE=${FILESDIR}/Makefile

ALL_TARGET=nkf

# original english man page was rather difficult to follow
do-install:	
	${INSTALL_PROGRAM} ${WRKSRC}/nkf ${PREFIX}/bin
	${INSTALL_MAN} ${FILESDIR}/nkf.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/nkf.doc ${PREFIX}/man/ja_JP.EUC/cat1/nkf.0

test: build
	cd ${WRKSRC} && perl nkf_test.pl

.include <bsd.port.mk>

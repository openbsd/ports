# very loosely based on FreeBSD 2.2.7
# $OpenBSD: Makefile,v 1.8 2000/10/10 00:40:45 espie Exp $


DISTNAME=	nkf-1.62
PKGNAME=	ja-nkf-1.62
CATEGORIES=	japanese textproc
NEED_VERSION=	1.210
MASTER_SITES=	http://www.sfc.wide.ad.jp/~max/FreeBSD/ports/distfiles/

MAINTAINER=	Marc Espie <espie@openbsd.org>

#		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
MAKE_FILE=${FILESDIR}/Makefile

ALL_TARGET=nkf

# original english man page was rather difficult to follow
do-install:	
	${INSTALL_PROGRAM} ${WRKSRC}/nkf ${PREFIX}/bin
	${INSTALL_MAN} ${FILESDIR}/nkf.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/nkf.doc ${PREFIX}/man/ja_JP.EUC/cat1/nkf.0

test: build
	cd ${WRKSRC} && perl nkf_test.pl

.include <bsd.port.mk>

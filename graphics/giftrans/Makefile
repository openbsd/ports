# $OpenBSD: Makefile,v 1.11 2002/10/27 00:03:16 naddy Exp $
# $FreeBSD: Makefile,v 1.2 1996/11/18 11:27:58 asami Exp $

COMMENT=	"handle GIF89a transparent option and interlace mode"

DISTNAME=	giftrans
PKGNAME=        giftrans-1.12
CATEGORIES=	graphics
MASTER_SITES=   ftp://ftp.lab.kdd.co.jp/infosystems/misc/tools/

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

do-build:
	cd ${WRKSRC} && cc ${CFLAGS} giftrans.c -o giftrans

NO_REGRESS=	Yes

do-install:
	@ ${INSTALL_PROGRAM} ${WRKSRC}/giftrans ${PREFIX}/bin
	@ ${INSTALL_MAN} ${WRKSRC}/giftrans.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

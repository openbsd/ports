# $OpenBSD: Makefile,v 1.19 2015/02/16 22:57:08 naddy Exp $

COMMENT=	handle GIF89a transparent option and interlace mode

DISTNAME=	giftrans
PKGNAME=        giftrans-1.12
CATEGORIES=	graphics

# BSD-like, badly worded
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=	ftp://ftp.lab.kdd.co.jp/infosystems/misc/tools/

NO_TEST=	Yes

do-configure:
	@perl -pi -e 's,/usr/lib,${X11BASE}/lib,g' ${WRKSRC}/giftrans.c

do-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} giftrans.c -o giftrans

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/giftrans ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/giftrans.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.16 2010/10/18 18:13:13 espie Exp $

COMMENT=	handle GIF89a transparent option and interlace mode

DISTNAME=	giftrans
PKGNAME=        giftrans-1.12
CATEGORIES=	graphics

# BSD-like, badly worded
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	ftp://ftp.lab.kdd.co.jp/infosystems/misc/tools/

USE_X11=	Yes
USE_GROFF =	Yes
NO_REGRESS=	Yes

do-configure:
	@perl -pi -e 's,/usr/lib,${X11BASE}/lib,g' ${WRKSRC}/giftrans.c

do-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} giftrans.c -o giftrans

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/giftrans ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/giftrans.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

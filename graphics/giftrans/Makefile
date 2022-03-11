COMMENT=	handle GIF89a transparent option and interlace mode

DISTNAME=	giftrans
PKGNAME=        giftrans-1.12
REVISION=	0
CATEGORIES=	graphics

# BSD-like, badly worded
PERMIT_PACKAGE=	Yes
WANTLIB=		c

MASTER_SITES=	ftp://ftp.lab.kdd.co.jp/infosystems/misc/tools/

NO_TEST=	Yes

do-configure:
	@sed -i 's,/usr/lib,${X11BASE}/share,g' ${WRKSRC}/giftrans.c

do-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} giftrans.c -o giftrans

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/giftrans ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/giftrans.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

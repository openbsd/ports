# $OpenBSD: Makefile,v 1.18 2019/07/12 20:47:41 sthen Exp $

COMMENT=	multi-radix calculator for x11

DATE=		19951219
DISTNAME=	hexcalc
PKGNAME=	${DISTNAME}-${DATE}
REVISION=	1
CATEGORIES=	math
EXTRACT_SUFX=	..tar.Z

PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xaw Xext Xmu Xt c

MASTER_SITES=	https://spacehopper.org/mirrors/ \
		ftp://aixpdslib.seas.ucla.edu/pub/hexcalc/RISC/3.2/src/

NO_TEST=	Yes

post-extract:
	rm ${WRKSRC}/*.orig

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hexcalc ${PREFIX}/bin/hexcalc
	${INSTALL_MAN} ${WRKSRC}/hexcalc.man ${PREFIX}/man/man1/hexcalc.1

.include <bsd.port.mk>

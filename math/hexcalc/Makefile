# $OpenBSD: Makefile,v 1.9 2007/09/15 18:44:36 steven Exp $

COMMENT=	multi-radix calculator for x11

DATE=		19951219
DISTNAME=	hexcalc
PKGNAME=	${DISTNAME}-${DATE}
CATEGORIES=	math
EXTRACT_SUFX=	..tar.Z

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xaw Xext Xmu Xt c

MASTER_SITES=	ftp://aixpdslib.seas.ucla.edu/pub/hexcalc/RISC/3.2/src/

NO_REGRESS=	Yes
USE_X11=	Yes

post-extract:
	@rm -f ${WRKSRC}/*.orig

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hexcalc ${PREFIX}/bin/hexcalc
	${INSTALL_MAN} ${WRKSRC}/hexcalc.man ${PREFIX}/man/man1/hexcalc.1

.include <bsd.port.mk>

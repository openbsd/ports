# $OpenBSD: Makefile,v 1.17 2002/12/23 00:37:52 pvalchev Exp $

COMMENT=	"simple menu patterned after plan9"

DISTNAME=	9menu-1.5
CATEGORIES=	plan9

MASTER_SITES=	ftp://ftp.mathcs.emory.edu/pub/arnold/

EXTRACT_SUFX=	.shar.gz

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -I${X11BASE}/include" \
		LIBS="-L${X11BASE}/lib -lX11"

ALL_TARGET=	9menu

WRKDIST=	${WRKDIR}

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/9menu ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/9menu.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.15 2002/03/21 21:25:50 espie Exp $

COMMENT=	"simple menu patterned after plan9"

DISTNAME=	9menu-1.5
CATEGORIES=	plan9
NEED_VERSION=	1.515
MASTER_SITES=	ftp://ftp.mathcs.emory.edu/pub/arnold/

EXTRACT_SUFX=	.shar.gz

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -I${X11BASE}/include" \
		LIBS="-L${X11BASE}/lib -lX11"

ALL_TARGET=	9menu

WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/9menu ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/9menu.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

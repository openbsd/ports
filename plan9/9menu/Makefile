# $OpenBSD: Makefile,v 1.22 2009/08/10 06:33:44 kili Exp $

COMMENT=	simple menu patterned after plan9

DISTNAME=	9menu-1.7
PKGNAME=	${DISTNAME}p0
CATEGORIES=	plan9

MASTER_SITES=	ftp://ftp.freefriends.org/arnold/Source/

EXTRACT_SUFX=	.shar.gz

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 c pthread-stubs xcb

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -I${X11BASE}/include" \
		LIBS="-L${X11BASE}/lib -lX11"
MAKE_FILE=	Makefile.noimake

USE_X11=	Yes

ALL_TARGET=	9menu

WRKDIST=	${WRKDIR}

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/9menu ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/9menu.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

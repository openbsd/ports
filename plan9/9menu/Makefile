# $OpenBSD: Makefile,v 1.28 2015/02/16 22:57:12 naddy Exp $

COMMENT=	simple menu patterned after plan9

DISTNAME=	9menu-1.7
REVISION =	1
CATEGORIES=	plan9

MASTER_SITES=	ftp://ftp.freefriends.org/arnold/Source/

EXTRACT_SUFX=	.shar.gz

# nonstandard license
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	No
PERMIT_DISTFILES_FTP =	No
WANTLIB=		X11 c pthread-stubs xcb

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -I${X11BASE}/include" \
		LIBS="-L${X11BASE}/lib -lX11"
MAKE_FILE=	Makefile.noimake

ALL_TARGET=	9menu

WRKDIST=	${WRKDIR}

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/9menu ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/9menu.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

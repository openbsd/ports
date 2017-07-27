# $OpenBSD: Makefile,v 1.29 2017/07/27 01:03:33 gsoares Exp $

COMMENT=	simple menu patterned after plan9

DISTNAME=	9menu-1.9
CATEGORIES=	plan9

MAINTAINER=	Kaashif Hymabaccus <kaashif@kaashif.co.uk>

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

# $OpenBSD: Makefile,v 1.30 2017/10/23 17:11:02 sthen Exp $

COMMENT=	simple menu patterned after plan9

DISTNAME=	9menu-1.9
CATEGORIES=	plan9
REVISION=	0

MAINTAINER=	Kaashif Hymabaccus <kaashif@kaashif.co.uk>

MASTER_SITES=	ftp://ftp.freefriends.org/arnold/Source/

EXTRACT_SUFX=	.shar.gz

# nonstandard license
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	No
PERMIT_DISTFILES_FTP =	No
WANTLIB=		X11 c xcb

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

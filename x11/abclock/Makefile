# $OpenBSD: Makefile,v 1.5 2013/03/11 11:46:08 espie Exp $

COMMENT=	analogue bitmap clock

DISTNAME=	abclock-1.0d
CATEGORIES=	x11

HOMEPAGE=	http://www.let.rug.nl/~kleiweg/abclock/

MAINTAINER=	Scott Vokes <vokes.s@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB=	X11 c

NO_TEST=	Yes

MAKE_FLAGS=	CC="${CC}" OPT="${CFLAGS}" \
		XINCLUDEDIR="-I${X11BASE}/include" \
		XLIBDIR="-L${X11BASE}/lib"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/abc_img ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/abclock ${PREFIX}/bin

.include <bsd.port.mk>

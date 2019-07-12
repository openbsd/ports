# $OpenBSD: Makefile,v 1.7 2019/07/12 20:51:07 sthen Exp $

COMMENT=	analogue bitmap clock

DISTNAME=	abclock-1.0d
REVISION=	0
CATEGORIES=	x11

HOMEPAGE=	http://www.let.rug.nl/~kleiweg/abclock/

# GPL
PERMIT_PACKAGE=	Yes

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

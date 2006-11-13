# $OpenBSD: Makefile,v 1.2 2006/11/13 13:01:37 steven Exp $

COMMENT=	"analogue bitmap clock"

DISTNAME=	abclock-1.0d
CATEGORIES=	x11

HOMEPAGE=	http://www.let.rug.nl/~kleiweg/abclock/

MAINTAINER=	Scott Vokes <vokes.s@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB=	X11 c

USE_X11=	Yes
NO_REGRESS=	Yes

MAKE_FLAGS=	CC="${CC}" OPT="${CFLAGS}" \
		XINCLUDEDIR="-I${X11BASE}/include" \
		XLIBDIR="-L${X11BASE}/lib"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/abc_img ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/abclock ${PREFIX}/bin

.include <bsd.port.mk>

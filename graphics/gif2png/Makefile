COMMENT=	converts GIF images to the PNG format

DISTNAME=	gif2png-2.5.14
CATEGORIES=	graphics
HOMEPAGE=	http://www.catb.org/~esr/gif2png/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c m png z

MASTER_SITES=	http://www.catb.org/~esr/gif2png/

LIB_DEPENDS=	graphics/png

USE_GMAKE=	Yes

CFLAGS +=	-I${LOCALBASE}/include
MAKE_FLAGS=	LDFLAGS="-L${LOCALBASE}/lib" \
		prefix=${TRUEPREFIX} \
		mandir=${PREFIX}/man

NO_TEST=	Yes

post-install:
	rm ${PREFIX}/bin/web2png ${PREFIX}/man/man1/web2png.1

.include <bsd.port.mk>

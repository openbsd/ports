COMMENT=	convert jpeg to compressed PostScript

DISTNAME=	jpeg2ps-1.9
REVISION =	0
CATEGORIES=	graphics

HOMEPAGE=	http://www.pdflib.com/products/more/jpeg2ps.html

# according to jpeg2ps.1
PERMIT_PACKAGE=	Yes
WANTLIB=		c

SITES=		${HOMEPAGE:S/.html/\//}

TEST_TARGET=	test
MAKE_FLAGS=	CC='${CC}' CFLAGS='${CFLAGS} -c' LD='${CC}'

.include <bsd.port.mk>

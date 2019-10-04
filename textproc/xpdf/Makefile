# $OpenBSD: Makefile,v 1.94 2019/10/04 18:27:34 naddy Exp $

COMMENT=	PDF viewer for X11

DISTNAME=	xpdf-3.04
CATEGORIES=	textproc x11
EPOCH=		0
REVISION=	1

MASTER_SITES=	https://xpdfreader-dl.s3.amazonaws.com/old/

HOMEPAGE=	https://www.xpdfreader.com/

# GPLv2 only or GPLv3 only or both (at our choice)
PERMIT_PACKAGE=	Yes

LIB_DEPENDS+=	graphics/png x11/motif
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-multithreaded \
		--without-Sgm-library \
		--without-libpaper-library

CONFIGURE_ENV=  CPPFLAGS='-I${X11BASE}/include/freetype2 -I${X11BASE}/include -I${LOCALBASE}/include -DLOCALBASE="\"${LOCALBASE}\""' \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -lm -lz"
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'

RUN_DEPENDS=	print/ghostscript/gnu-fonts

WANTLIB=	ICE SM X11 Xext Xpm Xt freetype Xm \
		c m png pthread ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xpdf
	${INSTALL_DATA} ${WRKSRC}/doc/sample-xpdfrc \
		${PREFIX}/share/examples/xpdf/xpdfrc
# already in poppler-utils
.for i in pdffonts pdfimages pdfinfo pdftoppm pdftops pdftotext
	rm ${PREFIX}/man/man1/$i.1
	rm ${PREFIX}/bin/$i
.endfor
# forgotten in Makefile.in (there's also a pdfthtml, but it conflicts
# with poppler-utils):
	${INSTALL_PROGRAM} ${WRKBUILD}/xpdf/pdftopng ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/pdftopng.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

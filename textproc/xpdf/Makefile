# $OpenBSD: Makefile,v 1.84 2014/06/08 18:56:33 kili Exp $

COMMENT=	PDF viewer for X11

DISTNAME=	xpdf-3.04
CATEGORIES=	textproc x11

MASTER_SITES=	ftp://ftp.foolabs.com/pub/xpdf/ \
		http://mirror.ctan.org/support/xpdf/

HOMEPAGE=	http://www.foolabs.com/xpdf/

# GPLv2 only or GPLv3 only or both (at our choice)
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS+=	graphics/png x11/openmotif
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
		c m png pthread stdc++ z

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

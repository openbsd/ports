COMMENT=	PDF viewer for X11

DISTNAME=	xpdf-3.04
CATEGORIES=	textproc x11
EPOCH=		0
REVISION=	2

SITES=		https://xpdfreader-dl.s3.amazonaws.com/old/

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

# others are already in popper-utils
PROGS=		xpdf pdfdetach pdftopng
ALL_TARGET=	${PROGS}

do-install:
.for prog in ${PROGS}
	${INSTALL_PROGRAM} ${WRKBUILD}/xpdf/${prog} ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/doc/${prog}.1 ${PREFIX}/man/man1/
.endfor
	${INSTALL_MAN} ${WRKSRC}/doc/xpdfrc.5 ${PREFIX}/man/man5/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xpdf
	${INSTALL_DATA} ${WRKSRC}/doc/sample-xpdfrc \
		${PREFIX}/share/examples/xpdf/xpdfrc

.include <bsd.port.mk>

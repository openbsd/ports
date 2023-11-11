COMMENT=	PDF viewer for X11

V=		3.04
DISTNAME=	xpdf-${V}
PKGNAME=	xpdf3-${V}
CATEGORIES=	textproc x11

SITES=		https://xpdfreader-dl.s3.amazonaws.com/old/

HOMEPAGE=	https://www.xpdfreader.com/

# GPLv2 only or GPLv3 only or both (at our choice)
PERMIT_PACKAGE=	Yes

LIB_DEPENDS+=	x11/motif
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
		c m pthread ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

NO_TEST=	Yes

# others are already in xpdf>=4 and popper-utils
ALL_TARGET=	xpdf

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/xpdf/xpdf ${PREFIX}/bin/xpdf3
	${INSTALL_MAN} ${WRKSRC}/doc/xpdf.1 ${PREFIX}/man/man1/xpdf3.1
	${INSTALL_MAN} ${WRKSRC}/doc/xpdfrc.5 ${PREFIX}/man/man5/xpdfrc3.5
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xpdf3
	${INSTALL_DATA} ${WRKSRC}/doc/sample-xpdfrc \
		${PREFIX}/share/examples/xpdf3/xpdfrc3
	# add "3" suffix to words "xpdf" and "xpdfrc"
	sed -Ei 's/\<xpdf(rc)?\>/&3/' ${PREFIX}/man/man{1/xpdf3.1,5/xpdfrc3.5}

.include <bsd.port.mk>

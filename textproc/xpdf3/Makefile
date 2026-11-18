COMMENT=	PDF viewer for X11 using poppler

V=		20261106
DISTNAME=	xpopple-0.0.$V
PKGNAME=	xpdf3-3.04pl$V
CATEGORIES=	textproc x11

HOMEPAGE=	https://offog.org/code/xpopple/

# tarred from git checkout; http://offog.org/git/xpopple.git
SITES=		https://spacehopper.org/mirrors/

# GPLv2 only, GPLv3 only, or GPLv2/v3 (at our choice)
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xm Xt c m paper poppler

COMPILER=	base-clang ports-gcc

LIB_DEPENDS=	print/libpaper \
		print/poppler \
		x11/motif

RUN_DEPENDS=	print/ghostscript/gnu-fonts

CONFIGURE_STYLE=  gnu

NO_TEST=	Yes

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

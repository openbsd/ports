# $OpenBSD: Makefile,v 1.15 2019/07/12 20:47:00 sthen Exp $

COMMENT-main=	OCR software
COMMENT-gui=	gocr tcl/tk frontend

V=		0.48
DISTNAME=	gocr-$V

PKGNAME-main=	gocr-$V
PKGNAME-gui=	gocr-gui-$V
REVISION-main =	0
REVISION-gui =	1

CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=jocr/}

HOMEPAGE=	http://www-e.uni-magdeburg.de/jschulen/ocr/

# GPLv2
PERMIT_PACKAGE=	Yes

NO_TEST=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-netpbm=${PREFIX}
USE_GMAKE=	Yes
FAKE_FLAGS+=	prefix=${PREFIX} exec_prefix=${PREFIX}

MULTI_PACKAGES=	-main -gui

MODULES=	x11/tk

PKG_ARCH-gui=	*
RUN_DEPENDS-gui=${MODTK_RUN_DEPENDS} \
		graphics/xsane \
		textproc/p5-tkispell \
		graphics/gocr

WANTLIB-main=	c m netpbm
LIB_DEPENDS-main=graphics/netpbm

post-extract:
	rm ${WRKSRC}/src/barcode.c.orig

pre-configure:
	${SUBST_CMD} ${WRKSRC}/man/man1/gocr.1 \
		${WRKSRC}/bin/gocr.tcl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gocr
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/gocr
	${INSTALL_DATA} ${WRKSRC}/doc/gocr.html ${PREFIX}/share/doc/gocr

.include <bsd.port.mk>

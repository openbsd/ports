# $OpenBSD: Makefile,v 1.57 2013/03/11 11:10:52 espie Exp $

COMMENT=	library for dynamic creation of images

DISTNAME=	gd-2.0.35
REVISION=	1
SHARED_LIBS=	gd	20.35
CATEGORIES=	graphics
MASTER_SITES=	${HOMEPAGE}/releases/

HOMEPAGE=	http://www.libgd.org/

LIB_DEPENDS=	graphics/jpeg \
		graphics/png

MODULES=	converters/libiconv

WANTLIB=	c expat fontconfig freetype jpeg m png z

PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --without-xpm

USE_LIBTOOL=	Yes

post-patch:
	@cd ${WRKSRC} && touch Makefile.in aclocal.m4 config.hin configure

post-install:
	@cd ${WRKSRC} && ./gddemo
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gd
	cd ${WRKSRC} && ${INSTALL_DATA} demoin.png demoout.png index.html \
	    ${PREFIX}/share/examples/gd

.include <bsd.port.mk>

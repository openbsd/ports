# $OpenBSD: Makefile,v 1.50 2007/07/02 10:46:04 steven Exp $

COMMENT=	"library for dynamic creation of images"

DISTNAME=	gd-2.0.35
SHARED_LIBS=	gd	20.35
CATEGORIES=	graphics
MASTER_SITES=	${HOMEPAGE}releases/

HOMEPAGE=	http://www.libgd.org/

LIB_DEPENDS=	jpeg.>=62::graphics/jpeg \
		png.>=2::graphics/png

MODULES=	converters/libiconv

WANTLIB=	c expat fontconfig freetype m z

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --without-xpm

USE_X11=	Yes
USE_LIBTOOL=	Yes

post-install:
	@cd ${WRKSRC} && ./gddemo
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gd
	cd ${WRKSRC} && ${INSTALL_DATA} demoin.png demoout.png index.html \
	    ${PREFIX}/share/examples/gd

.include <bsd.port.mk>

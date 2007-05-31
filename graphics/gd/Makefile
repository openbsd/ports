# $OpenBSD: Makefile,v 1.49 2007/05/31 18:32:06 rui Exp $

COMMENT=	"library for dynamic creation of images"

DISTNAME=	gd-2.0.34
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=	gd	20.34
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

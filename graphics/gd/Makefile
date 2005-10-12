# $OpenBSD: Makefile,v 1.39 2005/10/12 05:37:43 fgsch Exp $

COMMENT=	"library for dynamic creation of images"

DISTNAME=	gd-2.0.33
CATEGORIES=	graphics
MASTER_SITES=	http://www.boutell.com/gd/http/

HOMEPAGE=	http://www.boutell.com/gd/

LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		png.2::graphics/png \
		ttf.1.3::print/freetype

MODULES=	converters/libiconv

WANTLIB=	X11 Xpm c fontconfig freetype m ttf z

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-DHAVE_LIBTTF" \
		LDFLAGS="-L/usr/local/lib" \
		LIBS="-lttf"

USE_X11=	Yes
NO_REGRESS=	Yes

post-install:
	@cd ${WRKSRC} && ./gddemo
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gd
	cd ${WRKSRC} && ${INSTALL_DATA} demoin.png demoout.png index.html \
	    ${PREFIX}/share/examples/gd

.include <bsd.port.mk>

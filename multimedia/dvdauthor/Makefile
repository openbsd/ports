# $OpenBSD: Makefile,v 1.9 2008/11/20 13:35:11 okan Exp $

COMMENT=		creates DVD file structures
DISTNAME=		dvdauthor-0.6.11
PKGNAME=		${DISTNAME}p5
CATEGORIES=		multimedia

HOMEPAGE=		http://dvdauthor.sourceforge.net/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=dvdauthor/}

LIB_DEPENDS=		dvdread.>=3::devel/libdvdread \
			fribidi::devel/fribidi \
			xml2.>=5::textproc/libxml \
			MagickCore.>=1,MagickWand.>=1::graphics/ImageMagick

WANTLIB=		c freetype iconv m png z 

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include/libpng"
MAKE_FLAGS+=		BISON="yacc" LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dvdauthor
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/dvdauthor

.include <bsd.port.mk>

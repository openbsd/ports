# $OpenBSD: Makefile,v 1.6 2006/12/27 12:54:00 steven Exp $

COMMENT=		creates DVD file structures
DISTNAME=		dvdauthor-0.6.11
PKGNAME=		${DISTNAME}p2
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
			Magick.>=6,Wand.>=6::graphics/ImageMagick

WANTLIB=		ICE SM X11 Xext Xt bz2 c freetype iconv jasper jbig \
			jpeg lcms m png tiff z

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

# $OpenBSD: Makefile,v 1.13 2010/10/24 21:40:38 sthen Exp $

COMMENT=		creates DVD file structures
DISTNAME=		dvdauthor-0.6.14
CATEGORIES=		multimedia

HOMEPAGE=		http://dvdauthor.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=dvdauthor/}

LIB_DEPENDS=		::devel/libdvdread \
			::devel/fribidi \
			::textproc/libxml \
			::graphics/ImageMagick

WANTLIB += c freetype iconv m png z dvdread fribidi xml2 MagickCore MagickWand

USE_GMAKE=		Yes
USE_GROFF=		Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include/libpng"
MAKE_FLAGS+=		BISON="yacc" LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dvdauthor
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/dvdauthor

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.14 2010/11/19 07:23:12 espie Exp $

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

LIB_DEPENDS=		devel/libdvdread \
			devel/fribidi \
			textproc/libxml \
			graphics/ImageMagick

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

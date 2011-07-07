# $OpenBSD: Makefile,v 1.15 2011/07/07 01:06:59 ajacoutot Exp $

COMMENT=		creates DVD file structures
DISTNAME=		dvdauthor-0.6.14
REVISION=		0
CATEGORIES=		multimedia

HOMEPAGE=		http://dvdauthor.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=dvdauthor/}

MODULES=		converters/libiconv

LIB_DEPENDS=		devel/libdvdread \
			devel/fribidi \
			textproc/libxml \
			graphics/ImageMagick

WANTLIB += c freetype m png z dvdread fribidi xml2 MagickCore MagickWand

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

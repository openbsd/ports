# $OpenBSD: Makefile,v 1.19 2012/06/19 12:59:15 okan Exp $

COMMENT=	creates DVD file structures

DISTNAME=	dvdauthor-0.7.0
REVISION=	1
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dvdauthor/}

HOMEPAGE=	http://dvdauthor.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += MagickCore c dvdread expat fontconfig freetype
WANTLIB += fribidi m png pthread xml2 z

MODULES=	converters/libiconv
LIB_DEPENDS=	devel/fribidi>=0.19.2 \
		devel/libdvdread \
		graphics/ImageMagick \
		textproc/libxml

MAKE_FLAGS+=	BISON="yacc"

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"

WRKDIST=	${WRKDIR}/dvdauthor

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dvdauthor
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/dvdauthor

.include <bsd.port.mk>

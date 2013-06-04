# $OpenBSD: Makefile,v 1.21 2013/06/04 18:41:53 naddy Exp $

COMMENT=	creates DVD file structures

DISTNAME=	dvdauthor-0.7.0
REVISION=	1
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dvdauthor/}

HOMEPAGE=	http://dvdauthor.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

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
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

WRKDIST=	${WRKDIR}/dvdauthor

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dvdauthor
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/dvdauthor

.include <bsd.port.mk>

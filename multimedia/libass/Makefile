# $OpenBSD: Makefile,v 1.7 2013/11/16 00:49:57 brad Exp $

COMMENT=	portable ASS/SSA subtitle renderer

DISTNAME=	libass-0.10.2
CATEGORIES=	multimedia devel
MASTER_SITES=	https://libass.googlecode.com/files/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	ass	1.0

HOMEPAGE=	https://code.google.com/p/libass/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	enca expat fontconfig freetype fribidi m z

MODULES=	converters/libiconv
LIB_DEPENDS=	converters/enca \
		devel/fribidi>=0.19.2

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-harfbuzz
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv"

.include <bsd.port.mk>

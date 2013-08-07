# $OpenBSD: Makefile,v 1.6 2013/08/07 21:32:14 naddy Exp $

COMMENT=	portable ASS/SSA subtitle renderer

DISTNAME=	libass-0.10.1
REVISION=	0
CATEGORIES=	multimedia devel
MASTER_SITES=	https://libass.googlecode.com/files/

SHARED_LIBS=	ass 0.2

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

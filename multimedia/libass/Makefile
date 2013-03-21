# $OpenBSD: Makefile,v 1.5 2013/03/21 08:46:33 ajacoutot Exp $

COMMENT=	portable ASS/SSA subtitle renderer

DISTNAME=	libass-0.10.1
CATEGORIES=	multimedia devel
MASTER_SITES=	http://libass.googlecode.com/files/

SHARED_LIBS=	ass 0.2

HOMEPAGE=	http://code.google.com/p/libass/

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

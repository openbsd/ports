# $OpenBSD: Makefile,v 1.8 2014/06/12 09:55:58 brad Exp $

COMMENT=	portable ASS/SSA subtitle renderer

VER=		0.11.2
DISTNAME=	libass-${VER}
CATEGORIES=	multimedia devel
MASTER_SITES=	https://github.com/libass/libass/releases/download/${VER}/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	ass	1.1

HOMEPAGE=	https://code.google.com/p/libass/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	enca expat fontconfig freetype fribidi m pthread-stubs z

MODULES=	converters/libiconv
LIB_DEPENDS=	converters/enca \
		devel/fribidi>=0.19.2

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-asm \
		--disable-harfbuzz
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv"

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.13 2015/08/25 00:45:54 bentley Exp $

COMMENT=	portable ASS/SSA subtitle renderer

VER=		0.12.3
DISTNAME=	libass-${VER}
REVISION=	0
CATEGORIES=	multimedia devel
MASTER_SITES=	https://github.com/libass/libass/releases/download/${VER}/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	ass	1.3

HOMEPAGE=	https://github.com/libass/libass

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

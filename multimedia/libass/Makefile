# $OpenBSD: Makefile,v 1.24 2019/08/21 07:35:17 ajacoutot Exp $

COMMENT=	portable ASS/SSA subtitle renderer

VER=		0.14.0
DISTNAME=	libass-${VER}
REVISION=	0
CATEGORIES=	multimedia devel
MASTER_SITES=	https://github.com/libass/libass/releases/download/${VER}/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	ass	3.0

HOMEPAGE=	https://github.com/libass/libass

MAINTAINER=	Brad Smith <brad@comstyle.com>

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB=	expat fontconfig freetype fribidi iconv m z

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

LIB_DEPENDS=	converters/libiconv \
		devel/fribidi

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-asm \
		--disable-harfbuzz
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

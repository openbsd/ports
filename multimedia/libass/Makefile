# $OpenBSD: Makefile,v 1.22 2019/07/12 20:47:56 sthen Exp $

COMMENT=	portable ASS/SSA subtitle renderer

VER=		0.13.7
DISTNAME=	libass-${VER}
CATEGORIES=	multimedia devel
MASTER_SITES=	https://github.com/libass/libass/releases/download/${VER}/
EXTRACT_SUFX=	.tar.xz
REVISION=	0

SHARED_LIBS=	ass	3.0

HOMEPAGE=	https://github.com/libass/libass

MAINTAINER=	Brad Smith <brad@comstyle.com>

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB=	expat fontconfig freetype fribidi iconv m z

LIB_DEPENDS=	converters/libiconv \
		devel/fribidi

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-asm \
		--disable-harfbuzz
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.25 2020/12/14 15:56:36 rsadowski Exp $

COMMENT=	portable ASS/SSA subtitle renderer

VER=		0.15.0
DISTNAME=	libass-${VER}
CATEGORIES=	multimedia devel
MASTER_SITES=	https://github.com/libass/libass/releases/download/${VER}/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	ass	3.1

HOMEPAGE=	https://github.com/libass/libass

MAINTAINER=	Brad Smith <brad@comstyle.com>

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} expat fontconfig freetype fribidi \
		glib-2.0 graphite2 harfbuzz iconv intl m pcre z

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

LIB_DEPENDS=	converters/libiconv \
		devel/fribidi \
		devel/harfbuzz

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-asm
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

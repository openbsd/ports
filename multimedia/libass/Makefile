# $OpenBSD: Makefile,v 1.14 2015/10/07 05:30:48 ajacoutot Exp $

COMMENT=	portable ASS/SSA subtitle renderer

VER=		0.13.0
DISTNAME=	libass-${VER}
CATEGORIES=	multimedia devel
MASTER_SITES=	https://github.com/libass/libass/releases/download/${VER}/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	ass	2.0

HOMEPAGE=	https://github.com/libass/libass

MAINTAINER=	Brad Smith <brad@comstyle.com>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	expat fontconfig freetype fribidi m pthread-stubs z

MODULES=	converters/libiconv
LIB_DEPENDS=	devel/fribidi

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-asm \
		--disable-harfbuzz
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

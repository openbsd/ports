# $OpenBSD: Makefile,v 1.16 2016/03/14 19:44:02 ajacoutot Exp $

COMMENT=	portable ASS/SSA subtitle renderer

VER=		0.13.2
DISTNAME=	libass-${VER}
CATEGORIES=	multimedia devel
MASTER_SITES=	https://github.com/libass/libass/releases/download/${VER}/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	ass	2.1

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

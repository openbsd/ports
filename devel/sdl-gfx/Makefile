COMMENT=	primitives drawing/other support functions for SDL

DISTNAME=	SDL_gfx-2.0.25
PKGNAME=	${DISTNAME:L:S/_/-/}
CATEGORIES=	devel graphics x11
SITES=		${SITE_SOURCEFORGE:=sdlgfx/}
REVISION=	2

SHARED_LIBS=	SDL_gfx	15.0

HOMEPAGE=	http://www.ferzkopp.net/joomla/content/view/19/14/

# Zlib
PERMIT_PACKAGE=	Yes

WANTLIB=	SDL iconv m pthread sndio usbhid

LIB_DEPENDS=	devel/sdl

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

# i386:
# SDL_imageFilter.c:2166:14: error: always_inline function '_mm_cvtsi32_si64' requires target feature 'sse2', but would be inlined into function 'SDL_imageFilterSubByteMMX' that is compiled without support for 'sse2'
# 2166 |         __m64 mm1 = _m_from_int(i);
.if ${MACHINE_ARCH} != "amd64"
CONFIGURE_ARGS+= --disable-mmx
.endif

.include <bsd.port.mk>

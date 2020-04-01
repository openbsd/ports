# $OpenBSD: Makefile,v 1.9 2020/04/01 20:43:08 naddy Exp $

V =		2.0.15
COMMENT =	SDL2 TrueType fonts library
DISTNAME =	SDL2_ttf-${V}
PKGNAME =	sdl2-ttf-${V}
CATEGORIES =	devel graphics fonts

SHARED_LIBS +=	SDL2_ttf		0.0 # 10.2

HOMEPAGE =	https://www.libsdl.org/projects/SDL_ttf/

# zlib
PERMIT_PACKAGE=	Yes

WANTLIB += SDL2 freetype m pthread sndio usbhid z

MASTER_SITES =	https://www.libsdl.org/projects/SDL_ttf/release/

LIB_DEPENDS =	devel/sdl2

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

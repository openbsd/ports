# $OpenBSD: Makefile,v 1.3 2015/05/22 11:31:14 ajacoutot Exp $

V =		2.0.0
COMMENT =	SDL2 image library
DISTNAME =	SDL2_image-${V}
PKGNAME =	sdl2-image-${V}
REVISION =	1
CATEGORIES =	devel graphics

SHARED_LIBS +=	SDL2_image		0.0 # 0.0

HOMEPAGE =	http://www.libsdl.org/projects/SDL_image/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# zlib
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://www.libsdl.org/projects/SDL_image/release/

WANTLIB += SDL2 jpeg m png pthread sndio tiff usbhid webp z

LIB_DEPENDS =	devel/sdl2 \
		graphics/jpeg \
		graphics/libwebp \
		graphics/png \
		graphics/tiff

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-jpg-shared \
			--disable-png-shared \
			--disable-tif-shared \
			--disable-webp-shared
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

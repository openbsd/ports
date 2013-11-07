# $OpenBSD: Makefile,v 1.1.1.1 2013/11/07 16:25:22 bcallah Exp $

V =		2.0.0
COMMENT =	SDL2 cross-platform networking library
DISTNAME =	SDL2_net-${V}
PKGNAME =	sdl2-net-${V}
CATEGORIES =	devel net

SHARED_LIBS +=	SDL2_net		0.0 # 0.0

HOMEPAGE =	http://www.libsdl.org/projects/SDL_net/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# zlib
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL2 m pthread sndio usbhid

MASTER_SITES =	http://www.libsdl.org/projects/SDL_net/release/

LIB_DEPENDS =	devel/sdl2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-gui

SEPARATE_BUILD =	Yes

.include <bsd.port.mk>

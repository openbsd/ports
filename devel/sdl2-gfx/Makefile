# $OpenBSD: Makefile,v 1.4 2015/12/21 13:38:01 ajacoutot Exp $

V =		1.0.1
COMMENT =	primitives drawing/other support functions for SDL2
DISTNAME =	SDL2_gfx-${V}
PKGNAME =	sdl2-gfx-${V}
CATEGORIES =	devel graphics x11

SHARED_LIBS +=  SDL2_gfx             0.0      # 0.1

HOMEPAGE =	http://www.ferzkopp.net/joomla/content/view/19/14/

# zlib
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL2 m pthread sndio usbhid

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=sdl2gfx/}

LIB_DEPENDS =	devel/sdl2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

.if ${MACHINE_ARCH} != "amd64" && ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS +=	--disable-mmx
.endif

.include <bsd.port.mk>

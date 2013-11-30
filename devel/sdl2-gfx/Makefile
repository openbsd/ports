# $OpenBSD: Makefile,v 1.2 2013/11/30 03:16:04 brad Exp $

V =		1.0.0
COMMENT =	primitives drawing/other support functions for SDL2
DISTNAME =	SDL2_gfx-${V}
PKGNAME =	sdl2-gfx-${V}
REVISION =	0
CATEGORIES =	devel graphics x11

SHARED_LIBS +=	SDL2_gfx		0.0 # 0.0

HOMEPAGE =	http://www.ferzkopp.net/joomla/content/view/19/14/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

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

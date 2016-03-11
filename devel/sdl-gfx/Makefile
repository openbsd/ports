# $OpenBSD: Makefile,v 1.26 2016/03/11 19:59:13 naddy Exp $

COMMENT=	primitives drawing/other support functions for SDL

DISTNAME=	SDL_gfx-2.0.25
PKGNAME=	${DISTNAME:L:S/_/-/}
CATEGORIES=	devel graphics x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sdlgfx/}
REVISION=	0

SHARED_LIBS=	SDL_gfx	15.0

HOMEPAGE=	http://www.ferzkopp.net/joomla/content/view/19/14/

# Zlib
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	SDL m pthread sndio usbhid

MODULES=	converters/libiconv
LIB_DEPENDS=	devel/sdl

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

.if ${MACHINE_ARCH} != "amd64" && ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS+= --disable-mmx
.endif

.include <bsd.port.mk>

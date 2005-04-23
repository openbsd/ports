# $OpenBSD: Makefile,v 1.16 2005/04/23 15:55:52 espie Exp $

COMMENT=	"SDL image library"

DISTNAME=	SDL_image-1.2.3
PKGNAME=	${DISTNAME:L:S/_/-/}
CATEGORIES=	devel graphics
MASTER_SITES=	http://www.libsdl.org/projects/SDL_image/release/

HOMEPAGE=	http://www.libsdl.org/projects/SDL_image/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

FAKE=lib
# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext usbhid z

LIB_DEPENDS=	SDL.::devel/sdl \
		png.2::graphics/png \
		tiff.35::graphics/tiff \
		jpeg.62.::graphics/jpeg

USE_X11=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	LDFLAGS="-L${X11BASE}/lib" \
		CPPFLAGS="-I${DEPBASE}/include -I${DEPBASE}/include/libpng"
CONFIGURE_ARGS+=${CONFIGURE_SHARED}
CONFIGURE_ENV+=sdlconf_args=--prefix=${DEPBASE}

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh \
		patch-*

.include <bsd.port.mk>

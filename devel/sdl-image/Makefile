# $OpenBSD: Makefile,v 1.5 2001/12/23 05:07:55 obecian Exp $

COMMENT=	"SDL image library"

VER=		1.2.1
PROJ=		SDL_image
DISTNAME=	${PROJ}-${VER}
PKGNAME=	sdl-image-${VER}
CATEGORIES=	devel graphics
NEED_VERSION=	1.500
MASTER_SITES=	http://www.libsdl.org/projects/${PROJ}/release/

HOMEPAGE=	http://www.libsdl.org/

MAINTAINER=	Mark Grimes <obecian@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	SDL.:sdl-*-!no_x11:devel/sdl \
		png.2::graphics/png \
		tiff.35::graphics/tiff \
		jpeg.62.::graphics/jpeg

USE_X11=	Yes

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	LDFLAGS="${LDFLAGS} -L${X11BASE}/lib"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh \
		patch-*

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.12 2002/12/08 20:23:55 pvalchev Exp $

COMMENT=	"SDL image library"

VER=		1.2.2
PROJ=		SDL_image
DISTNAME=	${PROJ}-${VER}
PKGNAME=	sdl-image-${VER}
CATEGORIES=	devel graphics
MASTER_SITES=	http://www.libsdl.org/projects/${PROJ}/release/

HOMEPAGE=	http://www.libsdl.org/

MAINTAINER=	Jolan Luff <jolan@cryptonomicon.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	SDL.::devel/sdl \
		png.2::graphics/png \
		tiff.35::graphics/tiff \
		jpeg.62.::graphics/jpeg

USE_X11=	Yes

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${X11BASE}/lib"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh \
		patch-*

.include <bsd.port.mk>

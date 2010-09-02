# $OpenBSD: Makefile,v 1.31 2010/09/02 07:04:15 ajacoutot Exp $

COMMENT=	SDL image library

DISTNAME=	SDL_image-1.2.10
PKGNAME=	${DISTNAME:L:S/_/-/}
REVISION=	0
CATEGORIES=	devel graphics
MASTER_SITES=	ftp://ftp.fr.freebsd.org/pub/FreeBSD/distfiles/ \
		http://www.libsdl.org/projects/SDL_image/release/

SHARED_LIBS=	SDL_image	3.0

HOMEPAGE=	http://www.libsdl.org/projects/SDL_image/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	SDL jpeg m png tiff sndio usbhid z

MODULES=	converters/libiconv
LIB_DEPENDS=	::devel/sdl \
		::graphics/jpeg \
		::graphics/png \
		::graphics/tiff

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--disable-jpg-shared \
		--disable-png-shared \
		--disable-tif-shared
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.1.1.1 2002/04/21 03:48:59 pvalchev Exp $

COMMENT=	"Oxyd/Rock'n'Roll clone"

VERSION=	0.38
DISTNAME=	enigma-${VERSION}
CATEGORIES=	games x11
NEED_VERSION=	1.524

HOMEPAGE=	http://www.freesoftware.fsf.org/enigma/

MAINTAINER=     Lurene Grenier <lurene@menagerie.tf>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://freesoftware.fsf.org/download/enigma/

LIB_DEPENDS=	SDL::devel/sdl			\
		SDL_image::devel/sdl-image	\
		SDL_mixer::devel/sdl-mixer	\
		png.2::graphics/png		\
		tiff.35::graphics/tiff

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-png
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>

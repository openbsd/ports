# $OpenBSD: Makefile,v 1.22 2005/07/03 21:36:35 jolan Exp $

COMMENT=	"SDL multi-channel audio mixer library"
DISTNAME=	SDL_mixer-1.2.6
PKGNAME=	${DISTNAME:L:S/_/-/}
CATEGORIES=	devel audio
MASTER_SITES=	${HOMEPAGE}release/

HOMEPAGE=	http://www.libsdl.org/projects/SDL_mixer/

# LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_LIBTOOL=	Yes
USE_X11=	Yes

LIB_DEPENDS=	mikmod.2::audio/libmikmod \
		vorbis.0,vorbisfile.1::audio/libvorbis \
		SDL.4::devel/sdl \
		smpeg.1::devel/smpeg

WANTLIB=	X11 Xext c ogg pthread usbhid

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED}
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${X11BASE}/lib"

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/play{mus,wave} ${PREFIX}/bin

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.25 2006/01/06 08:36:18 steven Exp $

COMMENT=	"SDL multi-channel audio mixer library"
DISTNAME=	SDL_mixer-1.2.6
PKGNAME=	${DISTNAME:L:S/_/-/}p1
SHARED_LIBS=	SDL_mixer 2.4
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

WANTLIB=	X11 Xext c ogg pthread usbhid m

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED}
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -Dunix=1" \
		LDFLAGS="${LDFLAGS} -L${X11BASE}/lib"

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/.libs/play{mus,wave} ${PREFIX}/bin

.include <bsd.port.mk>

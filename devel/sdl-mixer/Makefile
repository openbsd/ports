# $OpenBSD: Makefile,v 1.36 2009/08/10 06:31:08 kili Exp $

COMMENT=	SDL multi-channel audio mixer library
DISTNAME=	SDL_mixer-1.2.6
PKGNAME=	${DISTNAME:L:S/_/-/}p8
SHARED_LIBS=	SDL_mixer 3.0
CATEGORIES=	devel audio
MASTER_SITES=	ftp://ftp.fr.freebsd.org/pub/FreeBSD/distfiles/ \
		${HOMEPAGE}release/

HOMEPAGE=	http://www.libsdl.org/projects/SDL_mixer/

# LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_LIBTOOL=	Yes
USE_X11=	Yes

LIB_DEPENDS=	mikmod.>=2::audio/libmikmod \
		vorbis,vorbisfile.>=1::audio/libvorbis \
		SDL.>=4::devel/sdl \
		smpeg.>=1::devel/smpeg

WANTLIB=	X11 Xau Xdmcp Xext Xrandr Xrender \
		c iconv m ogg pthread pthread-stubs sndio usbhid xcb

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED}
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -Dunix=1" \
		LDFLAGS="${LDFLAGS} -L${X11BASE}/lib"

pre-build:
	@perl -pi -e 's,_SYSCONFDIR_,${SYSCONFDIR},g' \
		${WRKSRC}/timidity/config.h

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/.libs/play{mus,wave} ${PREFIX}/bin

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.21 2004/11/24 00:11:03 espie Exp $

COMMENT=	"SDL multi-channel audio mixer library"

DISTNAME=	SDL_mixer-1.2.5
PKGNAME=	${DISTNAME:L:S/_/-/}p2
CATEGORIES=	devel audio

MASTER_SITES=	${HOMEPAGE}release/

HOMEPAGE=	http://www.libsdl.org/projects/SDL_mixer/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext c ogg pthread usbhid

USE_X11=	Yes

LIB_DEPENDS=	SDL::devel/sdl \
		smpeg.1::devel/smpeg \
	 	vorbis.0,vorbisfile.1::audio/libvorbis

SEPARATE_BUILD= concurrent
CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	LDFLAGS="${LDFLAGS} -L${X11BASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ARGS+=${CONFIGURE_SHARED}

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh \
		patch-*

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/.libs/play{mus,wave} ${PREFIX}/bin

.include <bsd.port.mk>

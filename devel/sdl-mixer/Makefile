# $OpenBSD: Makefile,v 1.13 2003/04/04 00:22:20 margarida Exp $

COMMENT=	"SDL multi-channel audio mixer library"
DISTNAME=	SDL_mixer-1.2.5
PKGNAME=	${DISTNAME:L:S/_/-/}
#PKGNAME=	sdl-mixer-1.2.5
CATEGORIES=	devel audio
MASTER_SITES=	http://www.libsdl.org/projects/SDL_mixer/release/

HOMEPAGE=	http://www.libsdl.org/projects/SDL_mixer/

MAINTAINER=	Jolan Luff <jolan@cryptonomicon.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

FLAVORS=	mikmod
FLAVOR?=

LIB_DEPENDS=	SDL::devel/sdl \
		smpeg.1::devel/smpeg \
	 	vorbis.0,vorbisfile.1::audio/libvorbis

.if ${FLAVOR:L:Mmikmod}
LIB_DEPENDS+=	mikmod.::audio/libmikmod
.else
CONFIGURE_ARGS+=--disable-music-mod
.endif

USE_X11=	Yes

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LDFLAGS="${LDFLAGS} -L${X11BASE}/lib"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh \
		patch-*

.include <bsd.port.mk>

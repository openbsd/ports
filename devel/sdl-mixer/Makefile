# $OpenBSD: Makefile,v 1.9 2002/05/23 06:38:24 wcobb Exp $

COMMENT=	"SDL multi-channel audio mixer library"
VER=		1.2.4
PROJ=		SDL_mixer
DISTNAME=	${PROJ}-${VER}
PKGNAME=	sdl-mixer-${VER}
CATEGORIES=	devel audio
NEED_VERSION=	1.500
MASTER_SITES=	http://www.libsdl.org/projects/${PROJ}/release/

HOMEPAGE=	http://www.libsdl.org/

MAINTAINER=	Mark Grimes <mark@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

FLAVORS=	vorbis mikmod
FLAVOR?=

LIB_DEPENDS=	smpeg.1::devel/smpeg

.if ${FLAVOR:L} == "vorbis"
LIB_DEPENDS+=	vorbis.0,vorbisfile.1::audio/libvorbis
.else
CONFIGURE_ARGS+=--disable-music-ogg
.endif

.if ${FLAVOR:L} == "mikmod"
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

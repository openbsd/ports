# $OpenBSD: Makefile,v 1.1.1.1 2001/05/07 04:07:03 obecian Exp $

COMMENT=	"SDL multi-channel audio mixer library"
VER=	1.2.0
PROJ=	SDL_mixer
DISTNAME=	${PROJ}-${VER}
PKGNAME=	sdl-mixer-${VER}
CATEGORIES=	devel audio
NEED_VERSION=	1.405
MASTER_SITES=	http://www.libsdl.org/projects/${PROJ}/release/

HOMEPAGE=	http://www.libsdl.org/

MAINTAINER=	Mark Grimes <obecian@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

FLAVORS=	vorbis
FLAVOR?=

.if ${FLAVOR:L} == "vorbis"
LIB_DEPENDS+=	vorbis.0::audio/libvorbis
.endif

LIB_DEPENDS=	SDL.:sdl-*-!no_x11:devel/sdl \
	smpeg.1::devel/smpeg

USE_X11=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=	LDFLAGS="${LDFLAGS} -L${X11BASE}/lib"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.1.1.1 2016/03/21 22:28:24 sthen Exp $

COMMENT=	lightweight headless squeezebox emulator

V=		1.8
DISTNAME=	squeezelite-v$V
PKGNAME=	squeezelite-$V

CATEGORIES=	audio

HOMEPAGE=	https://code.google.com/archive/p/squeezelite

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FLAC avcodec avformat avutil c faad m mad mpg123 portaudio
WANTLIB += pthread soxr vorbis vorbisfile

# https://squeezelite.googlecode.com/archive
MASTER_SITES=	https://spacehopper.org/mirrors/

LIB_DEPENDS=	audio/faad \
		audio/flac \
		audio/libmad \
		audio/libsoxr \
		audio/libvorbis \
		audio/mpg123 \
		audio/portaudio-svn \
		graphics/ffmpeg
LDFLAGS+=	-L${LOCALBASE}/lib -lportaudio -lpthread -lFLAC -lmpg123
LDFLAGS+=	-lvorbis -lvorbisfile -lsoxr -lmad -lavcodec -lavformat -lfaad

MAKE_FLAGS=	CFLAGS="-Wall -fPIC -DFFMPEG -DRESAMPLE -DLINKALL ${CFLAGS}" \
		CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="${LDFLAGS}"

USE_GMAKE=	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/squeezelite ${PREFIX}/bin/

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.10 2019/02/25 22:44:14 sthen Exp $

COMMENT=	lightweight headless squeezebox player

V=		1.9.0.1120
GH_ACCOUNT=	ralph-irving
GH_PROJECT=	squeezelite
GH_COMMIT=	59697689cb09f9899c96b3769da0dee4fc9c3508
DISTNAME=	squeezelite-$V

CATEGORIES=	audio

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FLAC avcodec avformat avutil c faad m mad mpg123 portaudio
WANTLIB += pthread soxr vorbisfile

LIB_DEPENDS=	audio/faad \
		audio/flac \
		audio/libmad \
		audio/libsoxr \
		audio/libvorbis \
		audio/mpg123 \
		audio/portaudio-svn \
		graphics/ffmpeg

MAKE_FLAGS=	CFLAGS="-Wall -fPIC ${CFLAGS}" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		OPTS="-DLINKALL -DFFMPEG -DRESAMPLE -DPORTAUDIO"
MAKE_ENV=	LDADD="-L${LOCALBASE}/lib -lpthread -lm -lportaudio"

USE_GMAKE=	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/squeezelite ${PREFIX}/bin/

.include <bsd.port.mk>

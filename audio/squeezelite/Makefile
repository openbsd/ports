COMMENT=	lightweight headless squeezebox player

# Find this in squeezelite.h.
# It's the developer's internal subversion ID before he pushes it to github:
# https://github.com/ralph-irving/squeezelite/issues/29#issuecomment-319686292
V=		2.0.0.1524
GH_ACCOUNT=	ralph-irving
GH_PROJECT=	squeezelite
GH_COMMIT=	db51a7b16934f41b72437394bf8114c3a85e0a91
DISTNAME=	squeezelite-$V

CATEGORIES=	audio

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += FLAC avcodec avformat avutil c crypto faad m mad mpg123
WANTLIB += ogg portaudio pthread soxr ssl vorbis vorbisfile

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
		OPTS="-DLINKALL -DFFMPEG -DRESAMPLE -DPORTAUDIO -DUSE_SSL -DNO_SSLSYM"
MAKE_ENV=	LDADD="-L${LOCALBASE}/lib -L${X11BASE}/lib -lpthread -lm -lportaudio -lcrypto -lssl"

USE_GMAKE=	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/squeezelite ${PREFIX}/bin/
	${INSTALL_DATA} ${WRKSRC}/doc/squeezelite.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>

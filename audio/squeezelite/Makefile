# $OpenBSD: Makefile,v 1.17 2020/04/27 10:01:05 sthen Exp $

COMMENT=	lightweight headless squeezebox player

V=		1.9.2.1205
GH_ACCOUNT=	ralph-irving
GH_PROJECT=	squeezelite
GH_COMMIT=	1cff80e5330501b1f587a474f06db08fd53d9521
DISTNAME=	squeezelite-$V
REVISION=	1

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
MAKE_ENV=	LDADD="-L${LOCALBASE}/lib -lpthread -lm -lportaudio -lcrypto -lssl"

USE_GMAKE=	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/squeezelite ${PREFIX}/bin/
	${INSTALL_DATA} ${WRKSRC}/doc/squeezelite.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.12 2019/05/11 15:48:59 sthen Exp $

COMMENT=	lightweight headless squeezebox player

V=		1.9.2.1145
GH_ACCOUNT=	ralph-irving
GH_PROJECT=	squeezelite
GH_COMMIT=	6cef0f33c888932efbdf3f5cd43ca9d6c2159937
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
		OPTS="-DLINKALL -DFFMPEG -DRESAMPLE -DPORTAUDIO -DUSE_SSL"
MAKE_ENV=	LDADD="-L${LOCALBASE}/lib -lpthread -lm -lportaudio -lcrypto -lssl"

USE_GMAKE=	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/squeezelite ${PREFIX}/bin/
	${INSTALL_DATA} ${WRKSRC}/doc/squeezelite.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>

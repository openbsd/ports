COMMENT=	library to handle various audio file formats

V=		1.2.2
DISTNAME=	libsndfile-${V}
EXTRACT_SUFX=	.tar.xz
CATEGORIES=	audio
REVISION=	0

HOMEPAGE=	https://libsndfile.github.io/libsndfile/
SITES=		https://github.com/libsndfile/libsndfile/releases/download/${V}/

MAINTAINER=	Jan Stary <hans@stare.cz>

SHARED_LIBS +=	sndfile              7.0      # .1.28

# LGPLv2.1 or LGPLv3
PERMIT_PACKAGE=	Yes

WANTLIB=	FLAC c m mp3lame mpg123 ogg opus sndio vorbis vorbisenc

MODULES=	devel/cmake \
		lang/python
MODPY_RUNDEP=	No

CONFIGURE_ARGS=	-DBUILD_SHARED_LIBS:BOOL=ON \
		-DCMAKE_DISABLE_FIND_PACKAGE_ALSA:BOOL=True \
		-DCMAKE_DISABLE_FIND_PACKAGE_Speex:BOOL=True \
		-DCMAKE_DISABLE_FIND_PACKAGE_SQLite3:BOOL=True

LIB_DEPENDS=	audio/flac \
		audio/lame \
		audio/libogg \
		audio/libvorbis \
		audio/mpg123 \
		audio/opus

NO_TEST=	Yes

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.34 2021/01/16 12:53:12 sthen Exp $

COMMENT=	library to handle various audio file formats

DISTNAME=	libsndfile-1.0.30
CATEGORIES=	audio
GH_ACCOUNT=	libsndfile
GH_PROJECT=	libsndfile
GH_TAGNAME=	v1.0.30

HOMEPAGE=	https://github.com/libsndfile/libsndfile/

MAINTAINER=	Jan Stary <hans@stare.cz>

SHARED_LIBS +=	sndfile              7.0      # .1.28

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB=	c m sndio FLAC ogg opus vorbis vorbisenc

MODULES=	devel/cmake \
		lang/python
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP=	No

CONFIGURE_ARGS=	-DBUILD_SHARED_LIBS:BOOL=ON \
		-DCMAKE_DISABLE_FIND_PACKAGE_ALSA:BOOL=True \
		-DCMAKE_DISABLE_FIND_PACKAGE_Speex:BOOL=True \
		-DCMAKE_DISABLE_FIND_PACKAGE_SQLite3:BOOL=True

LIB_DEPENDS=	audio/flac \
		audio/libogg \
		audio/libvorbis \
		audio/opus

.include <bsd.port.mk>

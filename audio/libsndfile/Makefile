# $OpenBSD: Makefile,v 1.33 2019/07/12 20:43:35 sthen Exp $

COMMENT=	library to handle various audio file formats

DISTNAME=	libsndfile-1.0.28
CATEGORIES=	audio
HOMEPAGE=	http://www.mega-nerd.com/libsndfile/
MAINTAINER=	Jan Stary <hans@stare.cz>
SHARED_LIBS +=	sndfile              6.0      # .1.28

# LGPLv2.1
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}files/

WANTLIB=	c m sndio FLAC ogg vorbis vorbisenc

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-alsa \
		--disable-octave \
		--disable-sqlite

CONFIGURE_ENV=	CPPFLAGS="-I${PREFIX}/include"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/Cfg

LIB_DEPENDS=	audio/flac \
		audio/libogg \
		audio/libvorbis

FAKE_FLAGS=	htmldocdir=${PREFIX}/share/doc/libsndfile

.include <bsd.port.mk>

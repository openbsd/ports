# $OpenBSD: Makefile,v 1.29 2015/12/10 10:00:30 sthen Exp $

COMMENT=	library to handle various audio file formats

DISTNAME=	libsndfile-1.0.26
CATEGORIES=	audio
HOMEPAGE=	http://www.mega-nerd.com/libsndfile/
MAINTAINER=	Jan Stary <hans@stare.cz>
SHARED_LIBS +=	sndfile              4.0      # .1.26

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}files/

WANTLIB=	c m sndio FLAC ogg vorbis vorbisenc

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-alsa \
		--disable-octave \
		--disable-sqlite
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/Cfg

LIB_DEPENDS=	audio/flac \
		audio/libogg \
		audio/libvorbis

FAKE_FLAGS=	htmldocdir=${PREFIX}/share/doc/libsndfile

.include <bsd.port.mk>

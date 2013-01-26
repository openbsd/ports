# $OpenBSD: Makefile,v 1.16 2013/01/26 15:53:20 bcallah Exp $

COMMENT=	audio sample rate conversion library

DISTNAME=	libsamplerate-0.1.7
REVISION=	1
SHARED_LIBS=	samplerate	2.0	# .1.3
CATEGORIES=	audio

HOMEPAGE=	http://mega-nerd.com/SRC/
MAINTAINER=	Jan Stary <hans@stare.cz>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB=	c m sndfile>=1 FLAC ogg vorbis vorbisenc

LIB_DEPENDS=	audio/libsndfile

USE_LIBTOOL=	yes
MAKE_FLAGS=	CFLAGS="${CFLAGS}"

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gcc-opt \
		--disable-cpu-clip \
		--disable-gcc-pipe \
		--disable-fftw

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libsamplerate
	${INSTALL_DATA} ${WRKSRC}/doc/*.css \
	${PREFIX}/share/doc/libsamplerate
	${INSTALL_DATA} ${WRKSRC}/doc/*.png \
	${PREFIX}/share/doc/libsamplerate
	${INSTALL_DATA} ${WRKSRC}/doc/*.html \
	${PREFIX}/share/doc/libsamplerate

.include <bsd.port.mk>

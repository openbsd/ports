# $OpenBSD: Makefile,v 1.23 2019/07/12 20:43:35 sthen Exp $

COMMENT=	audio sample rate conversion library

DISTNAME=	libsamplerate-0.1.9
SHARED_LIBS=	samplerate	2.1
CATEGORIES=	audio

HOMEPAGE=	http://mega-nerd.com/SRC/
MAINTAINER=	Jan Stary <hans@stare.cz>

# 2-BSD license
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB=	FLAC c m ogg sndfile>=1 vorbis vorbisenc

LIB_DEPENDS=	audio/libsndfile

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--disable-cpu-clip \
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

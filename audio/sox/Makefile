COMMENT=	Sound eXchange, the Swiss Army knife of audio manipulation

V=		14.4.4
DISTNAME=	sox_ng-${V}
PKGNAME=	sox-${V}
SHARED_LIBS +=  sox_ng                    0.0 # 3.0

REVISION=	0

CATEGORIES=	audio
HOMEPAGE=	https://sox.sourceforge.net/
MAINTAINER=	Jan Stary <hans@stare.cz>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c m pthread sndio z
WANTLIB += FLAC gsm mad mpg123 id3tag mp3lame ogg
WANTLIB += sndfile vorbis vorbisenc vorbisfile
WANTLIB += opus opusfile twolame wavpack
WANTLIB += png

SITES=		https://codeberg.org/sox_ng/sox_ng/releases/download/sox_ng-$V/

# see CONFIGURE_ARGS below
LIB_DEPENDS=			\
	audio/flac		\
	audio/gsm		\
	audio/libmad		\
	audio/libid3tag		\
	audio/lame		\
	audio/libogg		\
	audio/libsndfile	\
	audio/libvorbis		\
	audio/opusfile		\
	audio/twolame		\
	audio/wavpack		\
	graphics/png

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--datarootdir=${LOCALBASE}      \
	--enable-largefile			\
	--enable-replace			\
	--enable-symlinks			\
	--without-libltdl			\
	--disable-openmp			\
	--with-distro=OpenBSD			\
	--without-sunaudio

# Sound drivers
CONFIGURE_ARGS+=		\
	--without-ao		\
	--without-oss		\
	--without-alsa		\
	--without-coreaudio	\
	--without-pulseaudio	\
	--without-waveaudio	\
	--without-sunaudio	\
	--with-sndio

# Additional file formats
CONFIGURE_ARGS+=			\
	--with-id3tag			\
	--with-lame			\
	--with-mad			\
	--without-magic			\
	--without-amrnb			\
	--without-amrwb			\
	--with-png			\
	--with-twolame			\
	--with-flac			\
	--with-gsm			\
	--with-lpc10			\
	--with-mp3			\
	--with-oggvorbis		\
	--with-opus			\
	--with-sndfile			\
	--with-wavpack			\
	--without-ladspa

CONFIGURE_ENV= \
	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/opus" \
	LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	rm -f ${PREFIX}/lib/libsox.so

do-test:
	@cd ${WRKSRC}/src && ./tests.sh && ./testall.sh

.include <bsd.port.mk>

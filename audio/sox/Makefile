# $OpenBSD: Makefile,v 1.59 2015/03/16 18:07:37 naddy Exp $

COMMENT=	Sound eXchange, the Swiss Army knife of audio manipulation

DISTNAME=	sox-14.4.1
REVISION=	1
SHARED_LIBS +=	sox 3.0 # .2.1

CATEGORIES=	audio
HOMEPAGE=	http://sox.sourceforge.net/
MAINTAINER=	Jan Stary <hans@stare.cz>

# code is GPLv2+, however as opencore is under Apache License we must use
# sox under the terms of GPLv3 to avoid license conflict.
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		converters/libiconv

WANTLIB += c m z sndio
WANTLIB += ogg vorbis vorbisenc vorbisfile FLAC
WANTLIB += opencore-amrnb opencore-amrwb
WANTLIB += mad id3tag mp3lame twolame
WANTLIB += wavpack gsm sndfile
WANTLIB += magic png

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sox/}

# see CONFIGURE_ARGS below
LIB_DEPENDS=			\
	devel/libmagic		\
	graphics/png		\
	audio/libmad		\
	audio/libid3tag		\
	audio/lame		\
	audio/twolame		\
	audio/libvorbis		\
	audio/flac		\
	audio/wavpack		\
	audio/libsndfile	\
	audio/opencore-amr	\
	audio/gsm

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--datarootdir=${LOCALBASE}      \
		--disable-silent-libtool

# Don't use modules
CONFIGURE_ARGS+=--without-libltdl

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
CONFIGURE_ARGS+=		\
	--with-magic		\
	--with-png		\
	--without-ladspa	\
	--with-mad		\
	--with-id3tag		\
	--with-lame		\
	--with-twolame		\
	--with-oggvorbis	\
	--with-flac		\
	--with-amrwb		\
	--with-amrnb		\
	--with-wavpack		\
	--with-sndfile		\
	--without-ffmpeg	\
	--with-mp3		\
	--with-gsm

CONFIGURE_ENV= \
	CPPFLAGS="-I${LOCALBASE}/include" \
	LDFLAGS="-L${LOCALBASE}/lib"

do-test:
	@cd ${WRKSRC}/src && ./tests.sh && ./testall.sh

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.67 2016/09/21 11:40:14 ratchov Exp $

BROKEN-hppa =	bend.c:155:12: internal compiler error: in expand_expr_addr_expr_1, at expr.c:7697

COMMENT=	Sound eXchange, the Swiss Army knife of audio manipulation

DISTNAME=	sox-14.4.2
REVISION=	1
SHARED_LIBS +=	sox 4.0 # 3.0

CATEGORIES=	audio
HOMEPAGE=	http://sox.sourceforge.net/
MAINTAINER=	Jan Stary <hans@stare.cz>

# code is GPLv2+, however as opencore is under Apache License we must use
# sox under the terms of GPLv3 to avoid license conflict.
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m z sndio
WANTLIB += FLAC gsm mad id3tag mp3lame ogg
WANTLIB += sndfile vorbis vorbisenc vorbisfile
WANTLIB += opencore-amrnb opencore-amrwb
WANTLIB += opus opusfile twolame wavpack
WANTLIB += iconv png

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sox/}

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
	audio/opencore-amr	\
	audio/opus		\
	audio/opusfile		\
	audio/twolame		\
	audio/wavpack		\
	converters/libiconv	\
	graphics/png

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--datarootdir=${LOCALBASE}      \
	--enable-largefile		\
	--disable-silent-libtool	\
	--disable-openmp		\
	--enable-symlinks		\
	--without-libltdl		\
	--with-distro=OpenBSD

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
	--without-magic		\
	--with-png		\
	--without-ladspa	\
	--with-mad		\
	--with-id3tag		\
	--with-lame		\
	--with-twolame		\
	--with-oggvorbis	\
	--with-opus		\
	--with-flac		\
	--with-amrwb		\
	--with-amrnb		\
	--with-wavpack		\
	--with-sndfile		\
	--with-mp3		\
	--with-gsm		\
	--with-lpc10

CONFIGURE_ENV= \
	CPPFLAGS="-I${LOCALBASE}/include" \
	LDFLAGS="-L${LOCALBASE}/lib"

do-test:
	@cd ${WRKSRC}/src && ./tests.sh && ./testall.sh

# Attempt to avoid SIGILL in gcc.
MODULES+=	gcc4
MODGCC4_ARCHS=	hppa

.include <bsd.port.mk>

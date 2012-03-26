# $OpenBSD: Makefile,v 1.52 2012/03/26 20:38:49 sthen Exp $

COMMENT=	Sound eXchange, the Swiss Army knife of audio manipulation

DISTNAME=	sox-14.4.0
SHARED_LIBS +=	sox 3.0 # .2.0

CATEGORIES=	audio
HOMEPAGE=	http://sox.sourceforge.net/
MAINTAINER=	Jan Stary <hans@stare.cz>
REVISION=	0

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		converters/libiconv

WANTLIB += c m z sndio
WANTLIB += ogg vorbis vorbisenc vorbisfile FLAC
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
	audio/gsm

USE_GROFF=	Yes
USE_LIBTOOL=	Yes
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
	--without-amrwb		\
	--without-amrnb		\
	--with-wavpack		\
	--with-sndfile		\
	--without-ffmpeg	\
	--with-mp3		\
	--with-gsm

CONFIGURE_ENV= \
	CPPFLAGS="-I${LOCALBASE}/include" \
	LDFLAGS="-L${LOCALBASE}/lib"

do-regress:
	@cd ${WRKSRC}/src && ./tests.sh && ./testall.sh

.include <bsd.port.mk>

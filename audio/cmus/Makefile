# $OpenBSD: Makefile,v 1.13 2016/09/23 23:08:36 juanfra Exp $

COMMENT-main=		ncurses-based music player
COMMENT-ffmpeg=		ffmpeg input plugin for cmus (.aac, .mp4...)

V=			2.7.1
DISTNAME=		cmus-${V}
PKGNAME-main=		${PKGNAME}
PKGNAME-ffmpeg=		cmus-ffmpeg-${V}
REVISION=		0

GH_ACCOUNT=		cmus
GH_PROJECT=		cmus
GH_TAGNAME=		v${V}

CATEGORIES=		audio
HOMEPAGE=		http://cmus.sourceforge.net/

MAINTAINER=		Donovan Watteau <tsoomi@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MULTI_PACKAGES=		-main -ffmpeg

WANTLIB-main+=		c cdio cdio_cdda cue discid FLAC>=5 m mad>=2 ncursesw
WANTLIB-main+=		ogg opusfile pthread sndio wavpack iconv

LIB_DEPENDS-main=	audio/flac \
			audio/libcdio \
			audio/libcue \
			audio/libdiscid \
			audio/libmad \
			audio/libogg \
			audio/opusfile \
			audio/wavpack \
			converters/libiconv

WANTLIB-ffmpeg=		avformat swresample
LIB_DEPENDS-ffmpeg=	graphics/ffmpeg
RUN_DEPENDS-ffmpeg=	audio/cmus

USE_GMAKE=		Yes

CONFIGURE_STYLE=	simple
CONFIGURE_ENV=		HOSTCC="${CC}" HOSTLD="${CC}" HOST_CFLAGS="${CFLAGS}"
CFLAGS+=		-Wno-system-headers
# Note: We're explicitly disabling CONFIG_CDDB as it gets undef'd in cdio.c
CONFIGURE_ARGS=		prefix=${PREFIX} \
			exampledir=${PREFIX}/share/examples/cmus \
			mandir=${PREFIX}/man \
			CONFIG_AAC=n \
			CONFIG_ALSA=n \
			CONFIG_AO=n \
			CONFIG_ARTS=n \
			CONFIG_CDDB=n \
			CONFIG_DISCID=y \
			CONFIG_FFMPEG=y \
			CONFIG_JACK=n \
			CONFIG_MODPLUG=n \
			CONFIG_MP4=n \
			CONFIG_MPC=n \
			CONFIG_OSS=n \
			CONFIG_PULSE=n \
			CONFIG_ROAR=n \
			CONFIG_SAMPLERATE=n \
			CONFIG_SNDIO=y \
			CONFIG_SUN=n \
			CONFIG_VTX=n

.if ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS+=	CONFIG_TREMOR=y
LIB_DEPENDS-main+=	audio/tremor
WANTLIB-main+=		vorbisidec>=1
.else
LIB_DEPENDS-main+=	audio/libvorbis
WANTLIB-main+=		vorbis>=0 vorbisfile>=1
.endif

NO_TEST=		Yes

pre-build:
	sed -i s,/usr,${LOCALBASE}, ${WRKSRC}/Doc/cmus.txt
	sed -i s,doc/cmus/examples,examples/cmus, ${WRKSRC}/Doc/cmus.txt

.include <bsd.port.mk>

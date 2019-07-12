# $OpenBSD: Makefile,v 1.23 2019/07/12 20:43:32 sthen Exp $

COMMENT-main=		ncurses-based music player
COMMENT-ffmpeg=		ffmpeg input plugin for cmus (.aac, .mp4...)

V=			2.8.0
REVISION=		0
DISTNAME=		cmus-${V}
PKGNAME-main=		${PKGNAME}
PKGNAME-ffmpeg=		cmus-ffmpeg-${V}

GH_ACCOUNT=		cmus
GH_PROJECT=		cmus
GH_TAGNAME=		v${V}

CATEGORIES=		audio
HOMEPAGE=		https://cmus.github.io/

# GPLv2+
PERMIT_PACKAGE=	Yes

MULTI_PACKAGES=		-main -ffmpeg

WANTLIB-main+=		c cdio cdio_cdda curses discid FLAC iconv m mad
WANTLIB-main+=		opusfile pthread sndio vorbisfile wavpack

# Seen as EXTRAs but should be kept as cmus dlopen(3)'s its modules for
# input and output, so cmus needs an update if one of those are bumped
WANTLIB-main+=		ogg vorbis

# C11
COMPILER=		base-clang ports-gcc
LIB_DEPENDS-main=	audio/flac \
			audio/libcdio \
			audio/libcdio-paranoia \
			audio/libdiscid \
			audio/libmad \
			audio/libogg \
			audio/libvorbis \
			audio/opusfile \
			audio/wavpack \
			converters/libiconv

WANTLIB-ffmpeg=		avcodec avformat swresample
LIB_DEPENDS-ffmpeg=	graphics/ffmpeg
RUN_DEPENDS-ffmpeg=	audio/cmus

USE_GMAKE=		Yes

CONFIGURE_STYLE=	simple
CONFIGURE_ENV=		HOSTCC="${CC}" HOSTLD="${CC}" \
			HOST_CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"
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

NO_TEST=		Yes

#  undefined reference to `__atomic_fetch_add_8'
.if ${MACHINE_ARCH} == "powerpc" || ${MACHINE_ARCH} == "hppa"
WANTLIB-main += atomic
WANTLIB-ffmpeg += atomic
LDFLAGS += -latomic
.endif

pre-build:
	sed -i s,/usr,${LOCALBASE}, ${WRKSRC}/Doc/cmus.txt
	sed -i s,doc/cmus/examples,examples/cmus, ${WRKSRC}/Doc/cmus.txt

.include <bsd.port.mk>

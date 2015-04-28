# $OpenBSD: Makefile,v 1.249 2015/04/28 06:35:06 ajacoutot Exp $

SHARED_ONLY=	Yes

# May not be hard to add more.
ONLY_FOR_ARCHS=	${GCC4_ARCHS}

COMMENT=	movie player supporting many formats

V=		20141103
FFMPEG_V=	20150412
DISTNAME=	mplayer-${V}
REVISION=	4
CATEGORIES=	x11 multimedia
MASTER_SITES=	http://comstyle.com/source/
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	http://www.mplayerhq.hu/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	EGL GL SDL X11 Xext Xinerama Xss Xv Xxf86dga Xxf86vm ass \
		avcodec avformat avutil bluray bz2 c cdda_interface \
		cdda_paranoia crypto dv dvdnav dvdread enca fontconfig \
		freetype fribidi gif jpeg m mng mp3lame ncurses png postproc \
		pthread sndio stdc++ swscale util x264 xvidcore z

MODULES+=	converters/libiconv \
		lang/clang

MODCLANG_ARCHS=	amd64 i386

LIB_DEPENDS=	archivers/bzip2 \
		audio/cdparanoia \
		audio/lame \
		devel/fribidi \
		devel/sdl \
		devel/libdvdread>=4.2.0 \
		graphics/ffmpeg>=${FFMPEG_V} \
		graphics/giflib \
		graphics/jpeg \
		graphics/libmng \
		graphics/png \
		multimedia/libass \
		multimedia/libbluray \
		multimedia/libdv \
		multimedia/libdvdnav>=4.2.0 \
		multimedia/x264

BUILD_DEPENDS=	audio/ladspa \
		audio/rtunes \
		net/livemedia \
		textproc/docbook-xsl
# MPlayer uses non-public interfaces to FFmpeg, so we still need
# the FFmpeg source in the MPlayer tree at build time.
BUILD_DEPENDS+=	graphics/ffmpeg:patch

.if ${MACHINE_ARCH:Mamd64} || ${MACHINE_ARCH:Mi386}
BUILD_DEPENDS+=	devel/yasm
.endif

CONFDIR=	${SYSCONFDIR}/mplayer

MAKE_ENV=	V=1
SUBST_VARS+=	PREFIX CONFDIR

.if ${MACHINE_ARCH:Marm}
# uses ARM EABI
MPLAYER_ARCH=	generic
.else
MPLAYER_ARCH=	${MACHINE_ARCH}
.endif

# Add back fast math flag since we override CFLAGS
CFLAGS+=	-ffast-math

# PIE doesn't leave sufficient registers
.if ${MACHINE_ARCH:Mi386}
CFLAGS+=	-fomit-frame-pointer
.endif

USE_GMAKE=	Yes
CONFIGURE_STYLE= simple

# CONFIGURE_ARGS for misc stuff
CONFIGURE_ARGS+=--confdir=${CONFDIR} \
		--extra-cflags="-I${LOCALBASE}/include" \
		--extra-ldflags="-L${LOCALBASE}/lib -ffast-math" \
		--extra-libs-mplayer="-lrtunes -lcrypto" \
		--mandir=${LOCALBASE}/man \
		--target="${MPLAYER_ARCH}-openbsd"

# CONFIGURE_ARGS that disable internal stuff
CONFIGURE_ARGS+=--disable-alsa \
		--disable-arts \
		--disable-esd \
		--disable-ffmpeg_a \
		--disable-gui \
		--disable-libcdio \
		--disable-libmpeg2-internal \
		--disable-ossaudio \
		--disable-select \
		--disable-sunaudio \
		--disable-vidix

# CONFIGURE_ARGS that enable internal stuff
CONFIGURE_ARGS+=--enable-menu

# CONFIGURE_ARGS that enable external stuff
CONFIGURE_ARGS+=--with-sdl-config=${LOCALBASE}/bin/sdl-config

# CONFIGURE_ARGS that disable external stuff
CONFIGURE_ARGS+=--disable-caca \
		--disable-faac \
		--disable-faad \
		--disable-faac-lavc \
		--disable-ggi \
		--disable-gnutls \
		--disable-langinfo \
		--disable-liba52 \
		--disable-libdca \
		--disable-libilbc \
		--disable-liblzo \
		--disable-libmpeg2 \
		--disable-libopencore_amrnb \
		--disable-libopencore_amrwb \
		--disable-libopenjpeg \
		--disable-libopus \
		--disable-librtmp \
		--disable-libvorbis \
		--disable-mad \
		--disable-mpg123 \
		--disable-nas \
		--disable-openal \
		--disable-pulse \
		--disable-relocatable \
		--disable-smb \
		--disable-speex \
		--disable-theora \
		--disable-toolame \
		--disable-twolame \
		--disable-win32dll

.if ${MACHINE_ARCH:Marm}
WANTLIB+=	ogg vorbisidec
LIB_DEPENDS+=	audio/tremor
.else
CONFIGURE_ARGS+=--disable-tremor
.endif

.if ${MACHINE_ARCH:Mamd64} || ${MACHINE_ARCH:Mi386}
CONFIGURE_ARGS+=--enable-runtime-cpudetection
.endif

# binutils 2.15 assembler missing opcode support
.if ${MACHINE_ARCH:Mpowerpc}
CONFIGURE_ARGS+=--disable-altivec \
		--enable-runtime-cpudetection
.endif

.if ${MACHINE_ARCH:Marm}
# disable common floating point decoders that have integer alternatives
CONFIGURE_ARGS+=--disable-decoder=mp2float \
		--disable-decoder=mp3adufloat \
		--disable-decoder=mp3float \
		--disable-decoder=mp3on4float \
		--disable-decoder=vorbis
.endif

CONFIGURE_ENV+=	LOCALBASE="${LOCALBASE}" TMPDIR="${WRKBUILD}"

FLAVORS=	debug aa jack
FLAVOR?=

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS+=--enable-debug=3 \
		--disable-sighandler
.endif

.if ${FLAVOR:Maa}
LIB_DEPENDS+=	graphics/aalib
WANTLIB+=	aa
.else
CONFIGURE_ARGS+=--disable-aa
.endif

.if ${FLAVOR:Mjack}
LIB_DEPENDS+=	audio/jack
WANTLIB+=	jack
.else
CONFIGURE_ARGS+=--disable-jack
.endif

NO_TEST=	Yes

DOCDIR=		${PREFIX}/share/doc/mplayer
EXAMPLEDIR=	${PREFIX}/share/examples/mplayer

EXAMPLES=	input.conf menu.conf codecs.conf

post-extract:
	@cp ${FILESDIR}/ao_rtunes.c ${WRKSRC}/libao2
	@cp ${FILESDIR}/ai_sndio.c ${WRKSRC}/stream

pre-patch:
	@ln -s ${WRKDIR}/graphics/ffmpeg/ffmpeg-git-${FFMPEG_V} ${WRKSRC}/ffmpeg

post-build:
	@cd ${WRKSRC} && ${MAKE_PROGRAM} doc

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	cd ${WRKDIST}/etc; ${INSTALL_DATA} ${EXAMPLES} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKDIST}/etc/example.conf ${EXAMPLEDIR}/mplayer.conf
	${INSTALL_DATA} ${WRKDIST}/DOCS/HTML/en/*.html ${DOCDIR}

.include <bsd.port.mk>

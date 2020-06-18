# $OpenBSD: Makefile,v 1.308 2020/06/18 07:03:15 ajacoutot Exp $

COMMENT=	movie player supporting many formats

V=		20200229
FFMPEG_V=	4.3
DISTNAME=	mplayer-${V}
REVISION=	1
CATEGORIES=	x11 multimedia
MASTER_SITES=	https://comstyle.com/source/
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	http://www.mplayerhq.hu/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	EGL GL SDL X11 Xext Xinerama Xss Xv Xxf86dga Xxf86vm ass \
		avcodec avformat avutil bluray bs2b bz2 c cdda_interface \
		cdda_paranoia crypto dv dvdnav dvdread enca fontconfig \
		freetype fribidi gif iconv jpeg m mng mp3lame curses png \
		postproc pthread sndio ssl ${COMPILER_LIBCXX} swscale \
		swresample util x264 xvidcore z

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

LIB_DEPENDS=	archivers/bzip2 \
		audio/cdparanoia \
		audio/lame \
		audio/libbs2b \
		converters/enca \
		converters/libiconv \
		devel/fribidi \
		devel/sdl \
		devel/libdvdread \
		graphics/ffmpeg>=${FFMPEG_V} \
		graphics/giflib \
		graphics/jpeg \
		graphics/libmng \
		graphics/png \
		multimedia/libass \
		multimedia/libbluray>=0.8.0 \
		multimedia/libdv \
		multimedia/libdvdnav \
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
		--extra-ldflags="-L${LOCALBASE}/lib -ffast-math ${LDFLAGS}" \
		--extra-libs-mplayer="-lrtunes -lcrypto" \
		--mandir=${LOCALBASE}/man \
		--target="${MACHINE_ARCH}-openbsd"

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
CONFIGURE_ARGS+=--enable-openssl-nondistributable \
		--with-sdl-config=${LOCALBASE}/bin/sdl-config

# CONFIGURE_ARGS that disable external stuff
CONFIGURE_ARGS+=--disable-caca \
		--disable-faac \
		--disable-faad \
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
		--disable-tremor \
		--disable-twolame \
		--disable-win32dll

.if ${MACHINE_ARCH:Mamd64} || ${MACHINE_ARCH:Mi386}
CONFIGURE_ARGS+=--enable-runtime-cpudetection
.endif

# non-PIC assembly
.if ${MACHINE_ARCH:Mi386}
LDFLAGS+=	-Wl,-znotext
.endif

# binutils 2.15 assembler missing opcode support
.if ${MACHINE_ARCH:Mpowerpc}
CONFIGURE_ARGS+=--disable-altivec \
		--enable-runtime-cpudetection
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
	@ln -s ${WRKDIR}/graphics/ffmpeg/ffmpeg-${FFMPEG_V} ${WRKSRC}/ffmpeg

post-build:
	@cd ${WRKSRC} && ${MAKE_PROGRAM} doc

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	cd ${WRKDIST}/etc; ${INSTALL_DATA} ${EXAMPLES} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKDIST}/etc/example.conf ${EXAMPLEDIR}/mplayer.conf
	${INSTALL_DATA} ${WRKDIST}/DOCS/HTML/en/*.html ${DOCDIR}

.include <bsd.port.mk>

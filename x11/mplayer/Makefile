# $OpenBSD: Makefile,v 1.234 2014/02/16 19:50:52 pascal Exp $

SHARED_ONLY=		Yes

# May not be hard to add more.
ONLY_FOR_ARCHS =	${GCC4_ARCHS}

COMMENT =		movie player supporting many formats

V =			20140106
FFMPEG_V =		20131216

SUBST_VARS += 		PREFIX CONFDIR

# Distfiles must be hand-rolled, see README
N =			mplayer
DISTNAME =		mplayer-${V}
REVISION =		2
EXTRACT_SUFX =		.tar.xz

CATEGORIES =		x11 multimedia

HOMEPAGE =		http://www.mplayerhq.hu/

# GPLv2
PERMIT_PACKAGE_CDROM =		patents
PERMIT_PACKAGE_FTP =		Yes

WANTLIB =	EGL GL X11 Xext Xinerama Xss Xv Xxf86dga Xxf86vm ass avcodec \
		avformat avutil bluray bz2 c cdda_interface cdda_paranoia \
		crypto dv dvdnavmini dvdread enca fontconfig freetype \
		fribidi jpeg m mng mp3lame ncurses ogg>=5 opus png postproc \
		pthread SDL sndio speex stdc++ swscale gif util x264>=5 \
		xvidcore z

# we use a snapshot
MASTER_SITES =	http://comstyle.com/source/

MAINTAINER =	Edd Barrett <edd@openbsd.org>

MODULES +=	converters/libiconv

LIB_DEPENDS =	graphics/png \
		graphics/jpeg \
		graphics/giflib \
		graphics/ffmpeg>=${FFMPEG_V} \
		audio/cdparanoia>=3.a9.8 \
		audio/speex \
		audio/libogg \
		audio/lame \
		audio/opus \
		multimedia/libbluray \
		multimedia/libdv \
		devel/fribidi \
		graphics/libmng \
		archivers/bzip2 \
		multimedia/x264>=20101023 \
		devel/sdl>=1.2.5 \
		multimedia/libass \
		devel/libdvdread>=4.2.0 \
		multimedia/libdvdnav>=4.2.0

BUILD_DEPENDS =	net/livemedia \
		audio/rtunes>=0.8 \
		textproc/docbook-xsl \
		audio/ladspa
# MPlayer uses non-public interfaces to FFmpeg, so we still need
# the FFmpeg source in the MPlayer tree at build time.
BUILD_DEPENDS +=graphics/ffmpeg:patch

.if ${MACHINE_ARCH:Mamd64} || ${MACHINE_ARCH:Mi386}
BUILD_DEPENDS += devel/yasm
.endif

CONFDIR =	${SYSCONFDIR}/mplayer

.if ${MACHINE_ARCH:Marm}
# uses ARM EABI
MPLAYER_ARCH =	generic
.else
MPLAYER_ARCH =	${MACHINE_ARCH}
.endif

# Add back fast math flag since we override CFLAGS
CFLAGS +=	-ffast-math

# PIE doesn't leave sufficient registers
.if ${MACHINE_ARCH:Mi386}
CFLAGS +=	-fomit-frame-pointer
.endif

USE_GMAKE =	Yes
USE_GROFF =	Yes
MAKE_ENV =	V=1 	# turn on verbose FFmpeg build
CONFIGURE_STYLE = simple

# CONFIGURE_ARGS for misc stuff
CONFIGURE_ARGS += --target="${MPLAYER_ARCH}-openbsd" \
		--confdir=${CONFDIR} \
		--mandir=${LOCALBASE}/man \
		--extra-cflags="-I${LOCALBASE}/include" \
		--extra-ldflags="-L${LOCALBASE}/lib -ffast-math" \
		--extra-libs-mplayer="-lrtunes -lcrypto"

# CONFIGURE_ARGS that disable internal stuff
# gui is not supported anymore and we have better ones in ports
CONFIGURE_ARGS += --disable-alsa \
		--disable-arts \
		--disable-esd \
		--disable-ossaudio \
		--disable-sunaudio \
		--disable-vidix \
		--disable-select \
		--disable-libcdio \
		--disable-libmpeg2-internal \
		--disable-dvdread-internal \
		--disable-libdvdcss-internal \
		--disable-gui \
		--disable-ffmpeg_a	# link FFmpeg .so (graphics/ffmpeg)

# CONFIGURE_ARGS that enable internal stuff
CONFIGURE_ARGS += --enable-menu

# CONFIGURE_ARGS that enable external stuff
CONFIGURE_ARGS += --with-sdl-config=${LOCALBASE}/bin/sdl-config

# CONFIGURE_ARGS that disable external stuff
CONFIGURE_ARGS += --disable-smb \
		--disable-liblzo \
		--disable-nas \
		--disable-caca \
		--disable-langinfo \
		--disable-mad \
		--disable-openal \
		--disable-libdca \
		--disable-liba52 \
		--disable-libilbc \
		--disable-libmpeg2 \
		--disable-toolame \
		--disable-twolame \
		--disable-win32dll \
		--disable-ggi \
		--disable-libopencore_amrnb \
		--disable-libopencore_amrwb \
		--disable-libopenjpeg \
		--disable-mpg123 \
		--disable-librtmp \
		--disable-faac \
		--disable-faac-lavc \
		--disable-faad \
		--disable-theora \
		--disable-pulse \
		--disable-relocatable

# internal tremor, external tremor, external libvorbis all conflict
# we choose libvorbis to enable encoding to vorbis
CONFIGURE_ARGS += --disable-tremor
.if ${MACHINE_ARCH:Marm}
# ... except on arm, which has no floating point hardware
CONFIGURE_ARGS += --disable-libvorbis
.else
LIB_DEPENDS +=	audio/libvorbis
WANTLIB +=	vorbisenc vorbis
.endif

CONFIGURE_ENV += LOCALBASE="${LOCALBASE}" TMPDIR="${WRKBUILD}"

# binutils 2.15 does not support SSSE3 / SSE4 for amd64 / i386
.if ${MACHINE_ARCH:Mamd64} || ${MACHINE_ARCH:Mi386}
CONFIGURE_ARGS += --enable-runtime-cpudetection
CONFIGURE_ARGS += --disable-ssse3
CONFIGURE_ARGS += --disable-sse4
.endif

# binutils 2.15 assembler missing opcode support
.if ${MACHINE_ARCH:Mpowerpc}
CONFIGURE_ARGS += --disable-altivec
CONFIGURE_ARGS += --enable-runtime-cpudetection
.endif

.if ${MACHINE_ARCH:Marm}
# disable common floating point decoders that have integer alternatives
CONFIGURE_ARGS += --disable-decoder=mp3on4float \
		--disable-decoder=mp3adufloat \
		--disable-decoder=mp3float \
		--disable-decoder=mp2float \
		--disable-decoder=vorbis
.endif

FLAVORS =	debug aa jack
FLAVOR ?=

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS += --enable-debug=3 \
		--disable-sighandler
.endif

.if ${FLAVOR:Maa}
LIB_DEPENDS +=	graphics/aalib
WANTLIB +=	aa>=1.3
.else
CONFIGURE_ARGS += --disable-aa
.endif

.if ${FLAVOR:Mjack}
LIB_DEPENDS +=	audio/jack
WANTLIB +=	jack
.else
CONFIGURE_ARGS += --disable-jack
.endif

NO_TEST =	Yes

DOCDIR =	${PREFIX}/share/doc/mplayer
EXAMPLEDIR =	${PREFIX}/share/examples/mplayer

# copy in rtunes and sndio backends
post-extract:
	@cp ${FILESDIR}/ao_rtunes.c ${WRKSRC}/libao2
	@cp ${FILESDIR}/ai_sndio.c ${WRKSRC}/stream

# link FFmpeg sources to where build expects
pre-patch:
	ln -s ${WRKDIR}/graphics/ffmpeg/ffmpeg-git-${FFMPEG_V} ${WRKSRC}/ffmpeg

post-build:
	@cd ${WRKSRC} && ${MAKE_PROGRAM} doc

# install docs
post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	cd ${WRKDIST}/etc; ${INSTALL_DATA} input.conf menu.conf codecs.conf \
		${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKDIST}/etc/example.conf ${EXAMPLEDIR}/mplayer.conf
	${INSTALL_DATA} ${WRKDIST}/DOCS/HTML/en/*.html ${DOCDIR}

.include <bsd.port.mk>

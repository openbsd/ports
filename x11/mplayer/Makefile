# $OpenBSD: Makefile,v 1.184 2011/04/18 23:39:20 sthen Exp $

# May not be hard to add more.
ONLY_FOR_ARCHS =	alpha amd64 arm i386 mips64 mips64el powerpc sparc64

COMMENT =		movie player supporting many formats

V =			20110309
FFMPEG_V =		20110408

SUBST_VARS += 		PREFIX CONFDIR

# Distfiles must be hand-rolled, see README
N =			mplayer
DISTNAME =		mplayer-${V}
REVISION =		1

CATEGORIES =		x11 multimedia

HOMEPAGE =		http://www.mplayerhq.hu/

# GPLv2
PERMIT_PACKAGE_CDROM =		patents
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =	GL X11 Xext Xinerama Xss Xv Xxf86dga Xxf86vm avcodec avformat \
		avutil bz2 c cdda_interface cdda_paranoia \
		crypto dv faac fontconfig freetype fribidi gsm jpeg lcms \
		m mng mp3lame ncurses ogg>=5 orc-0.4 png postproc \
		pthread SDL schroedinger-1.0>=2.0 sndio speex stdc++ \
		swscale theora theoradec theoraenc ungif util vpx x264>=5 \
		xvidcore z

# we use a snapshot
MASTER_SITES =	http://theunixzoo.co.uk/distfiles/

MAINTAINER =	Edd Barrett <edd@openbsd.org>

MODULES +=	converters/libiconv

LIB_DEPENDS =	graphics/png \
		graphics/jpeg \
		graphics/libungif \
		graphics/ffmpeg>=20110408 \
		audio/cdparanoia>=3.a9.8 \
		multimedia/libtheora \
		audio/speex \
		audio/libmpcdec \
		audio/libogg \
		multimedia/xvidcore \
		audio/lame \
		multimedia/libdv \
		multimedia/libdvdnav>=4.1.3 \
		devel/libdvdread \
		devel/fribidi \
		graphics/lcms \
		graphics/libmng \
		archivers/bzip2 \
		multimedia/schroedinger>=1.0.10 \
		audio/faac \
		multimedia/x264>=20101023 \
		devel/sdl>=1.2.5

BUILD_DEPENDS =	net/livemedia \
		audio/rtunes>=0.8 \
		textproc/libxml \
		textproc/libxslt \
		textproc/docbook \
		textproc/docbook-xsl \
		audio/ladspa
# mplayer uses non-public interfaces to ffmepg, so we still need
# the ffmpeg source in the mplayer tree at build time.
BUILD_DEPENDS +=graphics/ffmpeg:patch

.if ${MACHINE_ARCH:Mamd64} || ${MACHINE_ARCH:Mi386}
BUILD_DEPENDS += devel/yasm
.endif

CONFDIR =	${SYSCONFDIR}/mplayer

USE_GMAKE =	Yes
USE_GROFF =	Yes
MAKE_ENV =	V=1 	# turn on verbose ffmpeg build
CONFIGURE_STYLE = simple

# CONFIGURE_ARGS for misc stuff
CONFIGURE_ARGS += --confdir=${CONFDIR} \
		--mandir=${LOCALBASE}/man \
		--extra-cflags="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		--extra-ldflags="-L${LOCALBASE}/lib" \
		--extra-libs-mplayer="-lrtunes -lcrypto"

# CONFIGURE_ARGS that disable internal stuff
CONFIGURE_ARGS += --disable-alsa \
		--disable-arts \
		--disable-esd \
		--disable-ossaudio \
		--disable-sunaudio \
		--disable-vidix \
		--disable-select \
		--disable-libcdio \
# seems stable dvdnav does not work with a new mplayer.
# if they make a release in the future, maybe we can pull that in,
# but for now we have to use the internal one.
#		--disable-dvdread-internal \
#		--disable-libdvdcss-internal \
# gui is not supported anymore and we have better ones in ports
CONFIGURE_ARGS += --disable-gui \
		--disable-ffmpeg_a	# link ffmpeg .so (graphics/ffmpeg)

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
		--disable-toolame \
		--disable-win32dll \
		--disable-ggi \
		--disable-libopenjpeg \
		--disable-mpg123 \
		--disable-librtmp \
		--disable-faad

# internal tremor, external tremor, external libvorbis all conflict
# we choose libvorbis to enable encoding to vorbis
CONFIGURE_ARGS += --disable-tremor
.if ${MACHINE_ARCH:Marm}
# ... except on arm, which has no floating point hardware
CONFIGURE_ARGS += --disable-libvorbis
.else
LIB_DEPENDS +=	audio/libvorbis
WANTLIB +=	vorbisenc vorbis
CONFIGURE_ARGS += --disable-tremor-internal
.endif

CONFIGURE_ENV += TMPDIR="${WRKBUILD}"

# binutils 2.15 does not do sse3 for i386/amd64
.if ${MACHINE_ARCH:Mi386} || ${MACHINE_ARCH:Mamd64}
CONFIGURE_ARGS += --enable-runtime-cpudetection
CONFIGURE_ARGS += --disable-ssse3
.endif

# again binutils 2.15 limits what we can do here too
.if ${MACHINE_ARCH:Mpowerpc}
CONFIGURE_ARGS += --disable-altivec
CONFIGURE_ARGS += --enable-runtime-cpudetection
.endif

.if ${MACHINE_ARCH:Marm}
# disable common floating point decoders that have integer alternatives
CONFIGURE_ARGS += --disable-mp3lib \
		--disable-decoder=mp3on4float \
		--disable-decoder=mp3adufloat \
		--disable-decoder=mp3float \
		--disable-decoder=mp2float \
		--disable-decoder=vorbis
# again old binutils...
CONFIGURE_ARGS += --target=generic-openbsd
.endif

FLAVORS =	debug aa jack
FLAVOR ?=

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS += --enable-debug=3 \
		--disable-sighandler
.endif

.if ${FLAVOR:L:Maa}
LIB_DEPENDS +=	graphics/aalib
WANTLIB +=	aa>=1.3
.else
CONFIGURE_ARGS += --disable-aa
.endif

.if ${FLAVOR:L:Mjack}
LIB_DEPENDS +=	audio/jack
WANTLIB +=	jack
.else
CONFIGURE_ARGS += --disable-jack
.endif

NO_REGRESS =	Yes

# copy in rtunes and sndio backends
post-extract:
	@cp ${FILESDIR}/ao_rtunes.c ${FILESDIR}/ao_sndio.c ${WRKSRC}/libao2
	@cp ${FILESDIR}/ai_sndio.c ${WRKSRC}/stream

# subst PREFIX in a patch, careful with update-patches!
pre-configure:
	${SUBST_CMD} ${WRKSRC}/DOCS/xml/configure

post-build:
	@cd ${WRKSRC}/DOCS/xml && ${MAKE_PROGRAM}

DOCDIR =	${PREFIX}/share/doc/mplayer
EXAMPLEDIR = 	${PREFIX}/share/examples/mplayer

# link ffmpeg sources to where build expects
pre-patch:
	ln -s ${WRKDIR}/graphics/ffmpeg/ffmpeg-git-${FFMPEG_V} ${WRKSRC}/ffmpeg

# install docs
post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	cd ${WRKDIST}/etc; ${INSTALL_DATA} input.conf menu.conf codecs.conf \
		${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKDIST}/etc/example.conf ${EXAMPLEDIR}/mplayer.conf
	${INSTALL_DATA} ${WRKDIST}/DOCS/HTML/en/*.html ${DOCDIR}

.include <bsd.port.mk>

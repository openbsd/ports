# $OpenBSD: Makefile,v 1.181 2011/02/12 10:49:36 jasper Exp $

# May not be hard to add more.
ONLY_FOR_ARCHS =	alpha amd64 arm i386 mips64 mips64el powerpc sparc64

COMMENT =		movie player supporting many formats

V =			20101024
V_DASHED =		2010-10-24

SUBST_VARS += 		PREFIX CONFDIR

N =			mplayer
DISTNAME =		mplayer-export-snapshot-${V}
PKGNAME =		${N}-${V}
REVISION =		2
CATEGORIES =		x11 multimedia
EXTRACT_SUFX =		.tar.bz2

WRKDIST = 		${WRKDIR}/mplayer-export-${V_DASHED}

HOMEPAGE =		http://www.mplayerhq.hu/

# GPLv2
PERMIT_PACKAGE_CDROM =		patents
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =	bz2 c cdda_interface cdda_paranoia crypto \
		dv dvdnavmini dvdread faac faad fribidi jpeg lcms \
		m mng mp3lame mpcdec ncurses ogg>=5 orc-0.4 png \
		pthread schroedinger-1.0>=2.0 sndio speex stdc++ \
		theora ungif util vpx x264>=5 xvidcore z

# we use a snapshot
MASTER_SITES =	http://theunixzoo.co.uk/distfiles/

MAINTAINER =	Edd Barrett <edd@openbsd.org>

MODULES +=	converters/libiconv

LIB_DEPENDS =	graphics/png \
		graphics/jpeg \
		graphics/libungif \
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
		audio/faad \
		audio/faac \
		multimedia/x264>=20101023 \
		multimedia/libvpx

BUILD_DEPENDS =	net/livemedia \
		audio/rtunes>=0.8 \
		textproc/libxml \
		textproc/libxslt \
		textproc/docbook \
		textproc/docbook-xsl \
		audio/ladspa

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
		--disable-dvdread-internal \
		--disable-libdvdcss-internal \
		--disable-faad-internal
# gui is not supported anymore and we have better ones in ports
CONFIGURE_ARGS += --disable-gui

# CONFIGURE_ARGS that enable internal stuff
CONFIGURE_ARGS += --enable-menu

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
		--disable-librtmp

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

FLAVORS =	sdl debug no_x11 aa jack
FLAVOR ?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS += --disable-gl \
		--disable-xv \
		--disable-x11 \
		--disable-fontconfig \
		--disable-freetype
.else
WANTLIB +=	GL X11 Xext Xinerama Xss Xv Xxf86dga Xxf86vm fontconfig \
		freetype 
RUN_DEPENDS +=	devel/desktop-file-utils
.endif

.if ${FLAVOR:L:Msdl}
CONFIGURE_ARGS += --with-sdl-config=${LOCALBASE}/bin/sdl-config
LIB_DEPENDS +=	devel/sdl>=1.2.5
WANTLIB +=	SDL
.else
CONFIGURE_ARGS += --disable-sdl
.endif

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS += --enable-debug=3 \
		--disable-sighandler
.endif

.if ${FLAVOR:L:Maa}
.if ${FLAVOR:L:Mno_x11}
LIB_DEPENDS +=	aalib-*-no_x11:graphics/aalib,no_x11
WANTLIB +=	aa>=1.3
.else
LIB_DEPENDS +=	graphics/aalib
WANTLIB +=	aa>=1.3
.endif
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


# Put a version.h in place so svn is not a BUILD_DEPEND
# (see version.sh for how this was supposed to work).
post-configure:
	cp ${FILESDIR}/version.h ${WRKDIST}/version.h

post-build:
	@cd ${WRKSRC}/DOCS/xml && ${MAKE_PROGRAM}

DOCDIR =	${PREFIX}/share/doc/mplayer
EXAMPLEDIR = 	${PREFIX}/share/examples/mplayer

# install docs
post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	cd ${WRKDIST}/etc; ${INSTALL_DATA} input.conf menu.conf codecs.conf \
		${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKDIST}/etc/example.conf ${EXAMPLEDIR}/mplayer.conf
	${INSTALL_DATA} ${WRKDIST}/DOCS/HTML/en/*.html ${DOCDIR}

.include <bsd.port.mk>

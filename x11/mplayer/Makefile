# $OpenBSD: Makefile,v 1.171 2010/08/24 14:55:30 naddy Exp $

# May not be hard to add more.
ONLY_FOR_ARCHS=		amd64 i386 powerpc sparc64 arm mips64 mips64el

COMMENT=		movie player supporting many formats

V=			20100308
V_DASHED=		2010-03-08

SUBST_VARS+= 		PREFIX CONFDIR

N=			mplayer
DISTNAME=		mplayer-export-snapshot-${V}
PKGNAME=		${N}-${V}
REVISION=		4
CATEGORIES=		x11 multimedia
EXTRACT_SUFX=		.tar.bz2

WRKDIST = 		${WRKDIR}/mplayer-export-${V_DASHED}

HOMEPAGE=		http://www.mplayerhq.hu/

# GPLv2
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		a52 bz2 c cdda_interface cdda_paranoia crypto dca \
			dv dvdnavmini dvdread faac faad fribidi jpeg lcms \
			m mng mp3lame mpcdec ncurses ogg.>=5 oil-0.3 png \
			pthread schroedinger-1.0 sndio speex stdc++ theora \
			ungif util x264.>=3 xvidcore z

# we use a snapshot
MASTER_SITES=	http://theunixzoo.co.uk/distfiles/

MAINTAINER=	Edd Barrett <edd@openbsd.org>

DISTFILES=	${DISTNAME}${EXTRACT_SUFX}

MODULES+=	converters/libiconv

LIB_DEPENDS=	::graphics/png \
		::graphics/jpeg \
		::graphics/libungif \
		:cdparanoia->=3.a9.8:audio/cdparanoia \
		::multimedia/libtheora \
		::audio/speex \
		::audio/libmpcdec \
		::audio/libogg \
		::multimedia/xvidcore \
		::audio/lame \
		::multimedia/libdv \
		:libdvdnav->=4.1.3:multimedia/libdvdnav \
		::devel/libdvdread \
		::devel/fribidi \
		::graphics/lcms \
		::graphics/libmng \
		::audio/libdca \
		::archivers/bzip2 \
		::multimedia/schroedinger \
		::audio/faad \
		::audio/faac \
		::audio/liba52 \
		::multimedia/x264

BUILD_DEPENDS=	::net/livemedia \
		:rtunes->=0.8:audio/rtunes \
		:libxml-*:textproc/libxml \
		:libxslt-*:textproc/libxslt \
		::textproc/docbook \
		::textproc/docbook-xsl \
		::audio/ladspa

.if ${MACHINE_ARCH:Mamd64} || ${MACHINE_ARCH:Mi386}
BUILD_DEPENDS+=	::devel/yasm
.endif

CONFDIR=	${SYSCONFDIR}/mplayer

USE_GMAKE=	Yes
CONFIGURE_STYLE=simple
CONFIGURE_ARGS+=--disable-alsa \
		--disable-arts \
		--disable-esd \
		--disable-ossaudio \
		--disable-nas \
		--disable-liblzo \
		--disable-caca \
		--disable-vidix \
		--disable-smb \
		--disable-select \
		--disable-langinfo \
		--disable-openal \
		--disable-libvorbis \
		--disable-tremor \
		--disable-mad \
		--disable-libcdio \
		--disable-toolame \
		--disable-dvdread-internal \
		--disable-libdvdcss-internal \
		--disable-faad-internal \
		--disable-gui \
		--disable-win32dll \
		--disable-ggi \
		--disable-libopenjpeg \
		--enable-menu \
		--confdir=${CONFDIR} \
		--mandir=${LOCALBASE}/man \
		--extra-cflags="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		--extra-ldflags="-L${LOCALBASE}/lib" \
		--extra-libs-mplayer="-lrtunes -lcrypto"

CONFIGURE_ENV+=	TMPDIR="${WRKBUILD}"

# bintools 2.15 does not do sse3 for i386/amd64
.if ${MACHINE_ARCH:Mi386} || ${MACHINE_ARCH:Mamd64}
CONFIGURE_ARGS+=--enable-runtime-cpudetection
CONFIGURE_ARGS+=--disable-ssse3
.endif

# again bintools 2.15 limits what we can do here too
.if ${MACHINE_ARCH:Mpowerpc}
CONFIGURE_ARGS+=--disable-altivec
CONFIGURE_ARGS+=--enable-runtime-cpudetection
.endif

FLAVORS=	sdl debug no_x11 aa jack
FLAVOR?=

# again old binutils...
.if ${MACHINE_ARCH:Marm}
CONFIGURE_ARGS+=--disable-mp3lib
CONFIGURE_ARGS+=--target=generic-openbsd
.endif

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=--disable-gl \
		--disable-xv \
		--disable-x11 \
		--disable-fontconfig \
		--disable-freetype
.else
USE_X11=	Yes
WANTLIB+=	GL X11 Xext Xinerama Xss Xv Xxf86dga Xxf86vm fontconfig \
		freetype 
RUN_DEPENDS+=	:desktop-file-utils-*:devel/desktop-file-utils
.endif

.if ${FLAVOR:L:Msdl}
CONFIGURE_ARGS+=--with-sdl-config=${LOCALBASE}/bin/sdl-config
LIB_DEPENDS+=	:sdl->=1.2.5:devel/sdl
WANTLIB+=	SDL
.else
CONFIGURE_ARGS+=--disable-sdl
.endif

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+=--enable-debug=3
.endif

.if ${FLAVOR:L:Maa}
.if ${FLAVOR:L:Mno_x11}
LIB_DEPENDS+=	:aalib-*-no_x11:graphics/aalib,no_x11
WANTLIB+=	aa.>=1.3
.else
LIB_DEPENDS+=	:aalib-*:graphics/aalib
WANTLIB+=	aa.>=1.3
.endif
.else
CONFIGURE_ARGS+=--disable-aa
.endif

.if ${FLAVOR:L:Mjack}
LIB_DEPENDS+=	::audio/jack
WANTLIB+=	jack
.else
CONFIGURE_ARGS+=--disable-jack
.endif

NO_REGRESS=	Yes

post-extract:
	@cp ${FILESDIR}/ao_rtunes.c ${FILESDIR}/ao_sndio.c ${WRKSRC}/libao2
	@cp ${FILESDIR}/ai_sndio.c ${WRKSRC}/stream

# subst PREFIX in a patch, careful with update-patches!
pre-configure:
	${SUBST_CMD} ${WRKSRC}/DOCS/xml/configure

post-configure:
	# Put a version.h in place so svn is not a BUILD_DEPEND
	# (see version.sh for how this was supposed to work).
	cp ${FILESDIR}/version.h ${WRKDIST}/version.h

post-build:
	@cd ${WRKSRC}/DOCS/xml && ${MAKE_PROGRAM}

DOCDIR =	${PREFIX}/share/doc/mplayer
EXAMPLEDIR = 	${PREFIX}/share/examples/mplayer

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	cd ${WRKDIST}/etc; ${INSTALL_DATA} input.conf menu.conf codecs.conf \
		${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKDIST}/etc/example.conf ${EXAMPLEDIR}/mplayer.conf
	${INSTALL_DATA} ${WRKDIST}/DOCS/HTML/en/*.html ${DOCDIR}
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${DOCDIR}

.include <bsd.port.mk>

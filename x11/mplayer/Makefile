# $OpenBSD: Makefile,v 1.160 2009/11/18 21:20:15 jakemsr Exp $

# May not be hard to add more.
ONLY_FOR_ARCHS=		amd64 i386 powerpc sparc64 arm mips64

SUBST_VARS += 		PREFIX

COMMENT=		movie player supporting MPEG, DivX, AVI, ASF, MOV & more

V=			20090708
N=			mplayer
DISTNAME=		mplayer-export-snapshot-${V}
PKGNAME=		${N}-${V}p2
CATEGORIES=		x11 multimedia
EXTRACT_SUFX=		.tar.bz2

WRKDIST = 		${WRKDIR}/mplayer-export-2009-07-08

HOMEPAGE=		http://www.mplayerhq.hu/

# GPLv2
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto m ncurses oil-0.3 pthread stdc++ util sndio z 

# snapshot
#MASTER_SITES = 	http://www.mplayerhq.hu/MPlayer/releases/
MASTER_SITES =		http://students.dec.bmth.ac.uk/ebarrett/distfiles/

MAINTAINER=     Edd Barrett <edd@openbsd.org>

DISTFILES=	${DISTNAME}${EXTRACT_SUFX}

MODULES=        gcc4
MODGCC4_ARCHES= powerpc

MODULES+=	converters/libiconv

.include <bsd.own.mk>

LIB_DEPENDS=	png::graphics/png \
		jpeg::graphics/jpeg \
		ungif::graphics/libungif \
		cdda_paranoia,cdda_interface:cdparanoia->=3.a9.8:audio/cdparanoia \
		theora::multimedia/libtheora \
		speex::audio/speex \
		mpcdec::audio/libmpcdec \
		ogg.>=5::audio/libogg \
		xvidcore::multimedia/xvidcore \
		x264.>=3::multimedia/x264 \
		mp3lame:lame-*:audio/lame \
		dv::multimedia/libdv \
		dvdnavmini:libdvdnav->=4.1.3:multimedia/libdvdnav \
		dvdread::devel/libdvdread \
		fribidi::devel/fribidi \
		lcms::graphics/lcms \
		mng::graphics/libmng \
		vorbisidec::audio/tremor \
		dca::audio/libdca \
		bz2::archivers/bzip2 \
		schroedinger-1.0::multimedia/schroedinger \
		faac::audio/faad \
		faad::audio/faac

BUILD_DEPENDS=	::net/livemedia \
		:rtunes->=0.8:audio/rtunes \
		:libxml-*:textproc/libxml \
		:libxslt-*:textproc/libxslt \
		::textproc/docbook \
		::textproc/docbook-xsl \
		::devel/yasm \
		::audio/ladspa

CONFDIR=	${SYSCONFDIR}/mplayer
SUBST_VARS=	CONFDIR

USE_GMAKE=	Yes
CONFIGURE_STYLE= simple
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
		--disable-libcdio \
		--disable-toolame \
		--disable-dvdread-internal \
		--disable-libdvdcss-internal \
		--disable-faad-internal \
		--disable-tremor-internal \
		--enable-menu \
		--confdir=${CONFDIR} \
		--mandir=${LOCALBASE}/man \
		--extra-cflags="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		--extra-ldflags="-L${LOCALBASE}/lib" \
		--disable-gui \
		--disable-win32dll \
		--disable-ggi

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

FLAVORS=	sdl debug mad no_x11 aa jack
FLAVOR?=

# again old binutils...
.if ${MACHINE_ARCH:Marm}
CONFIGURE_ARGS+=--disable-mp3lib
CONFIGURE_ARGS+=--target=generic-openbsd
FLAVOR+=	mad
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
LIB_DEPENDS+=	SDL:sdl->=1.2.5:devel/sdl
.else
CONFIGURE_ARGS+=--disable-sdl
.endif

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+=--enable-debug=3
.endif

.if ${FLAVOR:L:Mmad}
LIB_DEPENDS+=	mad.>=2::audio/libmad
.else
CONFIGURE_ARGS+=--disable-mad
.endif

.if ${FLAVOR:L:Maa}
.if ${FLAVOR:L:Mno_x11}
LIB_DEPENDS+=	aa.>=1.3:aalib-*-no_x11:graphics/aalib,no_x11
.else
LIB_DEPENDS+=	aa.>=1.3:aalib-*:graphics/aalib
.endif
.else
CONFIGURE_ARGS+=--disable-aa
.endif

.if ${FLAVOR:L:Mjack}
LIB_DEPENDS+=	jack::audio/jack
.else
CONFIGURE_ARGS+=--disable-jack
.endif

NO_REGRESS=	Yes

# subst PREFIX in a patch, careful with update-patches!
pre-configure:
	${SUBST_CMD} ${WRKSRC}/DOCS/xml/configure

post-patch:
	@cp ${FILESDIR}/ao_rtunes.c ${FILESDIR}/ao_sndio.c ${WRKSRC}/libao2
	@cp ${FILESDIR}/ai_sndio.c ${WRKSRC}/stream

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

# $OpenBSD: Makefile,v 1.148 2009/04/14 19:52:08 kili Exp $

# May not be hard to add more.
ONLY_FOR_ARCHS=		amd64 i386 powerpc sparc64 arm

COMMENT=		movie player supporting MPEG, DivX, AVI, ASF, MOV & more

V=			1.0rc2
N=			mplayer
DISTNAME=		MPlayer-${V}
DIST_SUBDIR=		${N}
PKGNAME=		${N}-${V}p22
CATEGORIES=		x11 multimedia
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://www.mplayerhq.hu/

# GPL
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ncurses pthread stdc++ util sndio z

MASTER_SITES=		http://www1.mplayerhq.hu/MPlayer/releases/ \
			http://www2.mplayerhq.hu/MPlayer/releases/ \
			http://www.mplayerhq.hu/MPlayer/releases/ \
			http://ftp.lug.udel.edu/MPlayer/releases/

# The skins tarball changes on a daily basis so it is mirrored
# locally, do NOT change this.
#MASTER_SITES0=		http://www2.mplayerhq.hu/MPlayer/Skin/
MASTER_SITES0=		${MASTER_SITE_BACKUP}

MAINTAINER=     Bjorn Sandell <biorn@chalmers.se>

SKIN=		default
SKINVER=	1.7
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${SKIN}-${SKINVER}${EXTRACT_SUFX}:0

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
		x264::multimedia/x264 \
		faad.>=2::audio/faad \
		mp3lame:lame-*:audio/lame \
		dv::multimedia/libdv

BUILD_DEPENDS=	::net/livemedia \
		:rtunes->=0.7:audio/rtunes

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
		--disable-vidix-internal \
		--disable-vidix-external \
		--enable-libdv \
		--disable-smb \
		--disable-tremor-external \
		--enable-tremor-internal \
		--disable-faac \
		--disable-select \
		--enable-theora \
		--enable-menu \
		--enable-iconv \
		--enable-cdparanoia \
		--enable-x264 \
		--enable-tv-v4l2 \
		--with-extraincdir=${LOCALBASE}/include/libpng:${LOCALBASE}/include \
		--with-extralibdir=${LOCALBASE}/lib \
		--extra-libs-mplayer="$$(pkg-config --libs x264)" \
		--extra-libs-mencoder="$$(pkg-config --libs x264)" \
		--confdir=${CONFDIR} \
		--mandir=${LOCALBASE}/man \
		--disable-langinfo \
		--disable-fribidi \
		--disable-openal \
		--disable-faad-internal \
		--enable-faad-external \
		--disable-libvorbis \
		--disable-libcdio

CONFIGURE_ENV+=	TMPDIR="${WRKBUILD}"

.if ${MACHINE_ARCH:Mi386}
CONFIGURE_ARGS+=--enable-runtime-cpudetection
CONFIGURE_ARGS+=--disable-ssse3
.endif

.if ${MACHINE_ARCH:Mpowerpc}
CONFIGURE_ARGS+=--disable-altivec
.endif

FLAVORS=	sdl ggi debug mad no_x11 aa jack
FLAVOR?=

.if ${MACHINE_ARCH:Marm}
CONFIGURE_ARGS+=--disable-mp3lib
FLAVOR+=	mad
.endif

.if ${FLAVOR:L:Mno_x11}
MODULES=	converters/libiconv
.  if ${FLAVOR:L:Msdl} || ${FLAVOR:L:Mggi}
ERRORS+="Fatal: nonsense combination of flavors"
.  else
CONFIGURE_ARGS+=--disable-gui \
		--disable-gl \
		--disable-xv \
		--disable-x11 \
		--disable-fontconfig \
		--disable-freetype
.  endif
.else
CONFIGURE_ARGS+=--enable-gui \
		--enable-gl
USE_X11=	Yes
LIB_DEPENDS+=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2
WANTLIB+=	GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender Xv Xxf86dga Xxf86vm \
		atk-1.0 cairo expat fontconfig freetype gio-2.0 \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1
MODULES=	devel/gettext
.endif

.if ${FLAVOR:L:Msdl}
CONFIGURE_ARGS+=--enable-sdl \
		--with-sdl-config=${LOCALBASE}/bin/sdl-config
LIB_DEPENDS+=	SDL:sdl->=1.2.5:devel/sdl
.else
CONFIGURE_ARGS+=--disable-sdl
.endif

.if ${FLAVOR:L:Mggi}
CONFIGURE_ARGS+=--enable-ggi
LIB_DEPENDS+=	ggi::graphics/ggi
.else
CONFIGURE_ARGS+=--disable-ggi
.endif

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+=--enable-debug=3
.endif

.if ${FLAVOR:L:Mmad}
CONFIGURE_ARGS+=--enable-mad
LIB_DEPENDS+=	mad.>=2::audio/libmad
.else
CONFIGURE_ARGS+=--disable-mad
.endif

.if ${MACHINE_ARCH:Mi386}
CONFIGURE_ARGS+=--win32codecsdir=${LOCALBASE}/lib/win32 \
		--enable-qtx \
		--realcodecsdir=${LOCALBASE}/lib/win32
.else
CONFIGURE_ARGS+=--disable-win32dll \
		--disable-qtx \
		--disable-real
.endif

.if ${FLAVOR:L:Maa}
CONFIGURE_ARGS+=--enable-aa
.if ${FLAVOR:L:Mno_x11}
LIB_DEPENDS+=	aa.>=1.3:aalib-*-no_x11:graphics/aalib,no_x11
.else
LIB_DEPENDS+=	aa.>=1.3:aalib-*:graphics/aalib
.endif
.else
CONFIGURE_ARGS+=--disable-aa
.endif

.if ${FLAVOR:L:Mjack}
CONFIGURE_ARGS+=--enable-jack
LIB_DEPENDS+=	jack::audio/jack
.else
CONFIGURE_ARGS+=--disable-jack
.endif

NO_REGRESS=	Yes

post-patch:
	@cp ${FILESDIR}/ao_rtunes.c ${FILESDIR}/ao_libsndio.c ${WRKSRC}/libao2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mplayer
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mplayer
	${INSTALL_DATA_DIR} ${PREFIX}/share/mplayer/skins/${SKIN}
	${INSTALL_DATA} ${WRKDIR}/${SKIN}/* ${PREFIX}/share/mplayer/skins/${SKIN}
	cd ${WRKDIST}/etc; ${INSTALL_DATA} input.conf menu.conf codecs.conf \
		${PREFIX}/share/examples/mplayer
	${INSTALL_DATA} ${WRKDIST}/etc/example.conf \
		${PREFIX}/share/examples/mplayer/mplayer.conf
	${INSTALL_DATA} ${WRKDIST}/DOCS/HTML/en/*.html ${PREFIX}/share/doc/mplayer

.include <bsd.port.mk>

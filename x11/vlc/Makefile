# $OpenBSD: Makefile,v 1.62 2007/11/25 14:21:57 bernd Exp $

SHARED_ONLY=	Yes

COMMENT-main=	videolan client; multimedia player

V=		0.8.6c
DISTNAME=	vlc-${V}
PKGNAME-main=	${DISTNAME}p7
CATEGORIES=	x11
MASTER_SITES=	http://download.videolan.org/pub/videolan/vlc/${V}/

HOMEPAGE=	http://www.videolan.org/vlc/

# GPL
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=	Yes
USE_X11=	Yes

MODULES=	devel/gettext
BUILD_DEPENDS+= ::net/livemedia
LIB_DEPENDS-main=${LIB_DEPENDS} \
		SDL_image.>=1.3::devel/sdl-image \
		png.>=4.1::graphics/png \
		id3tag.>=3.0::audio/libid3tag \
		mad.>=2.1::audio/libmad \
		mpeg2::graphics/libmpeg2 \
		avcodec.>=9.0,avformat.>=9.0,postproc.>=9.0,avutil.>=3.0::graphics/ffmpeg \
		fribidi::devel/fribidi \
		a52::audio/liba52 \
		theora.>=1::multimedia/libtheora \
		xml2.>=9::textproc/libxml \
		FLAC.>=7.0::audio/flac \
		mpcdec.>=1::audio/libmpcdec \
		matroska::multimedia/libmatroska \
		ebml::textproc/libebml \
		dvdnav.>=3.0::multimedia/libdvdnav \
                dvdread.>=3.0::devel/libdvdread \
		x264::multimedia/x264 \
		dvbpsi.>=3::graphics/libdvbpsi \
		wx_base,wx_base_net,wx_base_odbc,wx_base_xml,wx_gtk2_adv,wx_gtk2_aui,wx_gtk2_core,wx_gtk2_dbgrid,wx_gtk2_html,wx_gtk2_qa,wx_gtk2_xrc:wxWidgets-gtk2->=2.8.6:x11/wxWidgets
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

WANTLIB-main=	ICE SM X11 Xext Xinerama Xv Xxf86vm c freetype m ncurses \
		pthread stdc++ usbhid z Xau Xdmcp Xrandr Xrender \
		SDL jpeg tiff faad ogg vorbis vorbisenc faac mp3lame ossaudio

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.61
CONFIGURE_ENV+=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		CPPFLAGS="-I${WRKSRC}/include -I${X11BASE}/include -I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		XPIDL="${LOCALBASE}/seamonkey/xpidl"

CONFIGURE_ARGS+=--disable-pth \
		--disable-st \
		--disable-gprof \
		--disable-cprof \
		--disable-mostly-builtin \
		--disable-debug \
		--disable-release \
		--without-contrib \
		--disable-v4l \
		--disable-pvr \
		--disable-vcdx \
		--disable-cddax \
		--disable-satellite \
		--disable-dvb \
		--disable-twolame \
		--disable-tremor \
		--disable-tarkin \
		--disable-dirac \
		--disable-svg \
		--disable-qte \
		--disable-mga \
		--disable-svgalib \
		--disable-ggi \
		--disable-glide \
		--disable-aa \
		--disable-caca \
		--disable-portaudio \
		--disable-opie \
		--disable-galaktos \
		--disable-goom \
		--disable-slp \
		--disable-lirc \
		--disable-corba \
		--disable-testsuite \
		--disable-hal \
		--disable-optimizations \
		--disable-gnutls \
		--disable-dshow \
		--disable-smb \
		--disable-libcdio \
		--disable-libcddb \
		--disable-cdda \
		--disable-vcd \
		--disable-quicktime \
		--disable-dts \
		--disable-glx \
		--disable-opengl \
		--disable-hd1000v \
		--disable-directx \
		--disable-fb \
		--disable-wingdi \
		--disable-alsa \
		--disable-waveout \
		--disable-coreaudio \
		--disable-hd1000a \
		--disable-macosx \
		--disable-qnx \
		--disable-visual \
		--disable-joystick \
		--disable-activex \
		--disable-oss \
		--disable-skins2 \
		--disable-mod \
		--disable-speex \
		--disable-cmml \
		--disable-shout \
		--disable-gnomevfs \
		--disable-cyberlink \
		--disable-bonjour \
		--disable-daap \
		--disable-pda \
		--disable-xosd \
		--disable-notify

CONFIGURE_ARGS+=--enable-ncurses \
		--enable-sout \
		--enable-httpd \
		--enable-vlm \
		--enable-screen \
		--enable-ogg \
		--enable-mad \
		--enable-ffmpeg \
		--enable-a52 \
		--enable-libmpeg2 \
		--enable-vorbis \
		--enable-png \
		--enable-x11 \
		--enable-xvideo \
		--enable-sdl \
		--enable-freetype \
		--enable-fribidi \
		--enable-libxml2 \
		--enable-faad \
		--enable-theora \
		--enable-flac \
		--enable-mkv \
		--enable-mpc \
		--enable-wxwidgets \
		--enable-dvdread \
		--enable-dvdnav \
		--enable-dvbpsi \
		--enable-live555 \
		--with-live555-tree=${LOCALBASE}/live \
		--enable-real \
		--enable-realrtsp

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autotools

MULTI_PACKAGES=-main

FLAVORS=altivec
PSEUDO_FLAVORS=no_web no_arts no_esd
FLAVOR?=

.if !${FLAVOR:L:Mno_web}
MULTI_PACKAGES+=-web
COMMENT-web=	mozilla plugin for embedded media playback
PKGNAME-web=	vlc-web-${V}
BUILD_DEPENDS+=	:seamonkey-devel-*:www/seamonkey,-devel
CONFIGURE_ARGS+=--enable-mozilla
PORTPATH=	${WRKDIR}/bin:/usr/bin:/bin:/usr/sbin:/sbin:${DEPBASE}/bin:${LOCALBASE}/bin:${X11BASE}/bin:${LOCALBASE}/seamonkey
LIB_DEPENDS-web=${LIB_DEPENDS}
RUN_DEPENDS-web=::${BUILD_PKGPATH}
WANTLIB-web=	ICE SM X11 Xau Xdmcp Xext Xinerama Xt Xv Xxf86vm dvbpsi m ogg theora
.else
CONFIGURE_ARGS+=--disable-mozilla
.endif

.if !${FLAVOR:L:Mno_arts}
MULTI_PACKAGES+=-arts
COMMENT-arts=	artsd audio output module for vlc
FULLPKGNAME-arts=vlc-arts-${V}
CONFIGURE_ARGS+=--enable-arts
LIB_DEPENDS-arts=${LIB_DEPENDS} artsc.>=1::x11/kde/arts3
# any FLAVOR of vlc will do
RUN_DEPENDS-arts=::x11/vlc
WANTLIB-arts=	glib-2.0 gmodule-2.0 gthread-2.0 stdc++ pthread
.else
CONFIGURE_ARGS+=--disable-arts
.endif

.if !${FLAVOR:L:Mno_esd}
MULTI_PACKAGES+=-esd
COMMENT-esd=	esound audio output module for vlc
FULLPKGNAME-esd=vlc-esd-${V}
CONFIGURE_ARGS+=--enable-esd
LIB_DEPENDS-esd=esd.>=2::audio/esound
# any FLAVOR of vlc will do
RUN_DEPENDS-esd=::x11/vlc
WANTLIB-esd=	audiofile m
.else
CONFIGURE_ARGS+=--disable-esd
.endif

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
PKG_ARGS+=-Dx86opt=1
.else
PKG_ARGS+=-Dx86opt=0
.endif

.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+=--enable-loader
PKG_ARGS+=-Dwin32=1
.else
CONFIGURE_ARGS+=--disable-loader
PKG_ARGS+=-Dwin32=0
.endif

.if ${FLAVOR:L:Maltivec}
ONLY_FOR_ARCHS=	powerpc
CONFIGURE_ARGS+=--enable-altivec
PKG_ARGS+=-Daltivec=1
.else
CONFIGURE_ENV+=	ac_cv_altivec_inline=no \
		ac_cv_c_altivec=no
CONFIGURE_ARGS+=--disable-altivec
PKG_ARGS+=-Daltivec=0
.endif

# XXX video window initialization fails without this
.if ${MACHINE_ARCH} == "sparc64"
CFLAGS+=-mhard-quad-float
.endif

# win32 codecs support uses i386_set_ldt
post-configure:
.if ${MACHINE_ARCH} == "i386"
	@perl -pi -e s,'VLC_ENTRY = vlc_entry__0_8_6','VLC_ENTRY = vlc_entry__0_8_6 -li386',g \
	${WRKSRC}/modules/codec/Makefile ${WRKSRC}/modules/codec/dmo/Makefile
.endif

# this was used for the pda interface which is disabled now, it may be
# re-renabled when it is more usable so leave this here
#pre-build:
#	@perl -pi -e 's|_PREFIX_|${PREFIX}|g' ${WRKSRC}/modules/gui/pda/pda.c

# XXX install fails due to this file not being generated properly
pre-install:
	@touch ${WRKSRC}/share/skins2/default.vlt

post-install:
.if !${FLAVOR:L:Mno_web}
	${INSTALL_DATA_DIR} ${PREFIX}/lib/mozilla-plugins
	${INSTALL_DATA} ${WRKBUILD}/mozilla/libvlcplugin.so \
		${PREFIX}/lib/mozilla-plugins
.endif

.include <bsd.port.mk>

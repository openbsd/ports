# $OpenBSD: Makefile,v 1.147 2012/05/03 06:51:25 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT-main=	VideoLAN client; multimedia player
COMMENT-jack=	JACK audio output module for VLC

V=		2.0.1
DISTNAME=	vlc-${V}
PKGNAME-main=	${DISTNAME}
REVISION-main=	0
PKGNAME-jack=	vlc-jack-${V}
CATEGORIES=	x11
MASTER_SITES=	http://download.videolan.org/pub/videolan/vlc/${V}/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	vlc	2.0 \
		vlccore	2.0

HOMEPAGE=	http://www.videolan.org/vlc/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+ and GPLv2+
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB-common=	dbus-1 m ${MODGETTEXT_WANTLIB}
WANTLIB-main=	GL ICE lib/qt4/QtGui QtCore SM SDL SDL_image X11 Xau \
		Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama \
		Xpm Xrandr Xrender Xxf86vm ass atk-1.0 avcodec avformat \
		avutil bluray bz2 c cairo cddb drm dvbpsi dvdnav dvdread \
		ebml enca stdc++ expat ffi fontconfig freetype fribidi gcrypt \
		gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 \
		gmp gnutls gobject-2.0 gpg-error gsm gthread-2.0 gtk-x11-2.0 \
		hogweed jpeg matroska mp3lame nettle notify orc-0.4 ogg \
		p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png portaudio postproc proxy pthread-stubs pthread samplerate \
		sndio schroedinger-1.0>=2.0 sndio speex speexdsp swscale tag \
		tar tasn1 tiff theoradec theoraenc usbhid vorbis vorbisenc \
		vpx webp x264 xcb-composite xcb-keysyms xcb-randr xcb-render \
		xcb-shape xcb-shm xcb-xfixes xcb-xv xcb xml2 xvidcore z \
		${WANTLIB-common}
WANTLIB-jack=	jack vlccore ${WANTLIB-common}

AUTOCONF_VERSION= 2.68
AUTOMAKE_VERSION= 1.11

MODULES=	devel/gettext \
		x11/qt4 \
		gcc4
MODGCC4_VERSION= 4.6
MODGCC4_ARCHS=	amd64 i386
MODGCC4_LANGS=	c
LIB_DEPENDS+=	x11/dbus
LIB_DEPENDS-main= ${LIB_DEPENDS} \
		archivers/libtar \
		audio/libcddb \
		audio/libsamplerate \
		audio/libvorbis \
		audio/portaudio-svn \
		audio/speex \
		audio/taglib \
		devel/fribidi \
		devel/libdvdread>=4.2.0 \
		devel/libnotify>=0.7.2 \
		devel/sdl \
		devel/sdl-image \
		graphics/ffmpeg>=20110408 \
		graphics/libdvbpsi \
		graphics/png \
		multimedia/libass \
		multimedia/libbluray \
		multimedia/libdvdnav>=4.2.0 \
		multimedia/libmatroska \
		multimedia/schroedinger>=1.0.10 \
		multimedia/x264 \
		net/libproxy \
		security/gnutls \
		security/libgcrypt \
		textproc/libebml \
		textproc/libxml \
		x11/gtk+2 \
		x11/qt4
LIB_DEPENDS-jack= ${LIB_DEPENDS} \
		${BUILD_PKGPATH} \
		audio/jack
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool
RUN_DEPENDS-main= devel/desktop-file-utils \
		x11/gtk+2,-guic
RUN_DEPENDS-jack= ${BUILD_PKGPATH}

MAKE_ENV=	AUTOCONF_VERSION=${AUTOCONF_VERSION} AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

CPPFLAGS=	-I${X11BASE}/include -I${LOCALBASE}/include -I${LOCALBASE}/include/libpng

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/autotools
CONFIGURE_ARGS+=--disable-a52 \
		--disable-alsa \
		--disable-altivec \
		--disable-bonjour \
		--disable-caca \
		--disable-crystalhd \
		--disable-dc1394 \
		--disable-dca \
		--disable-decklink \
		--disable-dirac \
		--disable-dv \
		--disable-flac \
		--disable-fluidsynth \
		--disable-gme \
		--disable-gnomevfs \
		--disable-goom \
		--disable-kate \
		--disable-libmpeg2 \
		--disable-libva \
		--disable-linsys \
		--disable-live555 \
		--disable-lua \
		--disable-mad \
		--disable-mod \
		--disable-mpc \
		--disable-mtp \
		--disable-neon \
		--disable-projectm \
		--disable-pulse \
		--disable-shout \
		--disable-sid \
		--disable-smb \
		--disable-sqlite \
		--disable-svg \
		--disable-theora \
		--disable-tiger \
		--disable-twolame \
		--disable-udev \
		--disable-upnp \
		--disable-v4l2 \
		--disable-zvbi \
		--enable-real \
		--enable-realrtsp \
		--without-contrib \
		--without-tuning
CONFIGURE_ENV+=	CPPFLAGS="${CPPFLAGS}" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/qt4/pkgconfig"

PSEUDO_FLAVORS=	no_jack
FLAVOR?=

MULTI_PACKAGES=	-main

.if !${FLAVOR:L:Mno_jack}
MULTI_PACKAGES+=-jack
.endif

.include <bsd.port.arch.mk>

.if !${BUILD_PACKAGES:M-jack}
CONFIGURE_ARGS+=--disable-jack
.endif

.if ${MACHINE_ARCH} == "amd64"
PKG_ARGS+=-Damd64=1
.else
PKG_ARGS+=-Damd64=0
.endif

.if ${MACHINE_ARCH} == "i386"
PKG_ARGS+=-Di386=1
.else
PKG_ARGS+=-Di386=0
.endif

pre-configure:
	@cp ${FILESDIR}/sndio.c ${WRKSRC}/modules/audio_output
	@cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    ./bootstrap

post-install:
	@find ${PREFIX}/lib/vlc -name '*.la' -print | xargs rm

.include <bsd.port.mk>

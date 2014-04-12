# $OpenBSD: Makefile,v 1.178 2014/04/12 20:41:26 brad Exp $

SHARED_ONLY=	Yes

COMMENT-main=	VideoLAN client; multimedia player
COMMENT-jack=	JACK audio output module for VLC

V=		2.0.10
DISTNAME=	vlc-${V}
PKGNAME-main=	${DISTNAME}
PKGNAME-jack=	vlc-jack-${V}
REVISION-main=	0
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

WANTLIB-common=	c dbus-1 m pthread ${MODGETTEXT_WANTLIB}
WANTLIB-main=	GL ICE lib/qt4/QtGui QtCore SM SDL SDL_image X11 Xcomposite \
		Xcursor Xdamage Xext Xfixes Xi Xinerama Xpm Xrandr Xrender \
		ass atk-1.0 avcodec avformat avutil bluray cairo cddb dvbpsi \
		dvdnav dvdread ebml enca expat ffi fontconfig freetype fribidi \
		gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 \
		gmp gnutls gobject-2.0 gpg-error graphite2 gthread-2.0 \
		gtk-x11-2.0 harfbuzz hogweed jpeg matroska nettle notify opus \
		orc-0.4 ogg p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre \
		pixman-1 png postproc pthread-stubs samplerate \
		schroedinger-1.0>=2.0 sndio speex speexdsp stdc++ swscale tag tar \
		tasn1 tiff usbhid vorbis vorbisenc webp x264 xcb-composite \
		xcb-keysyms xcb-randr xcb-render xcb-shape xcb-shm xcb-xfixes \
		xcb-xv xcb xml2 z ${WANTLIB-common}
WANTLIB-jack=	jack vlccore ${WANTLIB-common}

AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.11

MODULES=	devel/gettext \
		lang/clang \
		x11/qt4
MODCLANG_ARCHS=	amd64 i386
MODCLANG_LANGS=	c
LIB_DEPENDS-main= ${MODQT4_LIB_DEPENDS} \
		${MODGETTEXT_LIB_DEPENDS} \
		archivers/libtar \
		audio/libcddb \
		audio/libsamplerate \
		audio/libvorbis \
		audio/opus \
		audio/speex \
		audio/taglib \
		devel/fribidi \
		devel/libdvdread>=4.2.0 \
		devel/libnotify>=0.7.2 \
		devel/sdl \
		devel/sdl-image \
		graphics/ffmpeg>=20121026 \
		graphics/libdvbpsi \
		graphics/png \
		multimedia/libass \
		multimedia/libbluray \
		multimedia/libdvdnav>=4.2.0 \
		multimedia/libmatroska \
		multimedia/schroedinger>=1.0.10 \
		multimedia/x264 \
		security/gnutls \
		security/libgcrypt \
		textproc/libebml \
		textproc/libxml \
		x11/dbus \
		x11/gtk+2
LIB_DEPENDS-jack= ${MODGETTEXT_LIB_DEPENDS} \
		${BUILD_PKGPATH} \
		audio/jack
BUILD_DEPENDS=	net/livemedia>=20120204p0 \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool
RUN_DEPENDS-main= devel/desktop-file-utils \
		x11/gtk+2,-guic
RUN_DEPENDS-jack= ${BUILD_PKGPATH}

MAKE_ENV=	AUTOCONF_VERSION=${AUTOCONF_VERSION} AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

CPPFLAGS=	-I${X11BASE}/include -I${LOCALBASE}/include

USE_GMAKE=	Yes
# Fails to link _pic libs properly resulting in undefined symbols in the live555 plugin
USE_LIBTOOL=	gnu
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
		--disable-libproxy \
		--disable-libva \
		--disable-linsys \
		--disable-lua \
		--disable-mad \
		--disable-mod \
		--disable-mpc \
		--disable-mtp \
		--disable-neon \
		--disable-projectm \
		--disable-portaudio \
		--disable-pulse \
		--disable-shout \
		--disable-sid \
		--disable-smb \
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
		--without-tuning \
		--with-kde-solid=${LOCALBASE}/share/apps/solid/actions
CONFIGURE_ENV+=	CPPFLAGS="${CPPFLAGS}" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -L${LOCALBASE}/live/liveMedia \
		    -L${LOCALBASE}/live/groupsock -L${LOCALBASE}/live/BasicUsageEnvironment \
		    -L${LOCALBASE}/live/UsageEnvironment" \
		LOCALBASE="${LOCALBASE}" \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/qt4/pkgconfig" \
		ac_cv_header_execinfo_h=no

PSEUDO_FLAVORS=	no_jack
FLAVOR?=

MULTI_PACKAGES=	-main

.if !${FLAVOR:Mno_jack}
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

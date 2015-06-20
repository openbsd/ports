# $OpenBSD: Makefile,v 1.190 2015/06/20 19:35:39 ajacoutot Exp $

BROKEN-amd64=	Bus error (core dumped)

SHARED_ONLY=	Yes

COMMENT-main=	VideoLAN client; multimedia player
COMMENT-jack=	JACK audio output module for VLC

V=		2.2.1
DISTNAME=	vlc-${V}
PKGNAME-main=	${DISTNAME}
PKGNAME-jack=	vlc-jack-${V}
CATEGORIES=	x11
MASTER_SITES=	https://download.videolan.org/pub/videolan/vlc/${V}/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	vlc	3.0 \
		vlccore	3.0

HOMEPAGE=	http://www.videolan.org/vlc/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+ and GPLv2+
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes

WANTLIB-common=	c dbus-1 idn m pthread ${MODGETTEXT_WANTLIB}
WANTLIB-main=	EGL GL ICE lib/qt4/QtGui QtCore SM SDL SDL_image X11 \
		Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xpm \
		Xrender Xrandr ass atk-1.0 avcodec avformat avutil bluray \
		cairo cddb croco-0.6 dvbpsi dvdnav dvdread ebml enca \
		expat ffi fontconfig freetype fribidi gcrypt gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls \
		gobject-2.0 gpg-error graphite2 gthread-2.0 gtk-x11-2.0 \
		harfbuzz hogweed jpeg lzma matroska nettle notify opus \
		ogg p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre \
		pixman-1 png postproc pthread-stubs rsvg-2 samplerate sndio \
		speex speexdsp stdc++ swscale tag tar tasn1 tiff usbhid \
		vorbis vorbisenc webp x264 xcb-composite xcb-keysyms \
		xcb-randr xcb-render xcb-shape xcb-shm xcb-xfixes xcb-xv \
		xcb xml2 z ${WANTLIB-common}
WANTLIB-jack=	db jack vlccore ${WANTLIB-common}

AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.15

MODULES=	devel/gettext \
		lang/clang \
		x11/qt4
MODCLANG_ARCHS=	amd64 i386
MODCLANG_LANGS=	c++

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
		devel/libdvdread \
		devel/libnotify \
		devel/sdl \
		devel/sdl-image \
		graphics/ffmpeg \
		graphics/libdvbpsi \
		graphics/png \
		multimedia/libass \
		multimedia/libbluray>=0.8.0 \
		multimedia/libdvdnav \
		multimedia/libmatroska \
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
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/bison \
		devel/libtool
RUN_DEPENDS-main= devel/desktop-file-utils \
		x11/gtk+3,-guic
RUN_DEPENDS-jack= ${BUILD_PKGPATH}

MAKE_ENV=	AUTOCONF_VERSION=${AUTOCONF_VERSION} AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

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
		--disable-chromaprint \
		--disable-crystalhd \
		--disable-dc1394 \
		--disable-dca \
		--disable-decklink \
		--disable-dv1394 \
		--disable-faad \
		--disable-flac \
		--disable-fluidsynth \
		--disable-freerdp \
		--disable-gme \
		--disable-gnomevfs \
		--disable-goom \
		--disable-gst-decode \
		--disable-kate \
		--disable-libmpeg2 \
		--disable-libva \
		--disable-linsys \
		--disable-lua \
		--disable-mad \
		--disable-mfx \
		--disable-mmal-codec \
		--disable-mod \
		--disable-mpc \
		--disable-mtp \
		--disable-neon \
		--disable-opencv \
		--disable-projectm \
		--disable-pulse \
		--disable-schroedinger \
		--disable-sftp \
		--disable-shine \
		--disable-shout \
		--disable-sid \
		--disable-smbclient \
		--disable-svg \
		--disable-theora \
		--disable-tiger \
		--disable-twolame \
		--disable-udev \
		--disable-upnp \
		--disable-v4l2 \
		--disable-vdpau \
		--disable-vnc \
		--disable-vpx \
		--disable-vsxu \
		--disable-x265 \
		--disable-zvbi \
		--enable-realrtsp \
		--without-contrib \
		--with-kde-solid=${LOCALBASE}/share/apps/solid/actions

# too old for now
CONFIGURE_ARGS+= --disable-live555

CONFIGURE_ENV+=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		LIVE555_PREFIX="${LOCALBASE}/live" \
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
	@cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    ./bootstrap

post-install:
	@find ${PREFIX}/lib/vlc -name '*.la' -print | xargs rm

.include <bsd.port.mk>

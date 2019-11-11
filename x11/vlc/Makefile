# $OpenBSD: Makefile,v 1.230 2019/11/11 19:10:45 ajacoutot Exp $

COMMENT-main=	VideoLAN client; multimedia player
COMMENT-jack=	JACK audio output module for VLC

V=		2.2.8
DISTNAME=	vlc-${V}
PKGNAME-main=	${DISTNAME}
PKGNAME-jack=	vlc-jack-${V}
CATEGORIES=	x11
MASTER_SITES=	https://download.videolan.org/pub/videolan/vlc/${V}/
EXTRACT_SUFX=	.tar.xz
REVISION=	9

SHARED_LIBS=	vlc	3.0 \
		vlccore	3.0

HOMEPAGE=	https://www.videolan.org/vlc/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+ and GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB-common=	c dbus-1 iconv idn intl m pthread
WANTLIB-main=	EGL GL ICE lib/qt4/QtGui QtCore SM SDL SDL_image X11 \
		Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xpm \
		Xrender Xrandr ass atk-1.0 avcodec avformat avutil bluray \
		cairo cddb croco-0.6 dvbpsi dvdnav dvdread ebml expat \
		ffi fontconfig freetype fribidi gcrypt gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls \
		gobject-2.0 gpg-error graphite2 gthread-2.0 gtk-x11-2.0 \
		harfbuzz hogweed idn2 jpeg lzma matroska nettle notify opus \
		ogg p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre \
		pixman-1 png postproc rsvg-2 samplerate sndio \
		speex speexdsp swscale tag tar tasn1 tiff unistring usbhid \
		vorbis vorbisenc webp x264 x265 xcb-composite xcb-keysyms \
		xcb-randr xcb-render xcb-shm xcb-xfixes xcb-xv xcb xml2 z \
		X11-xcb Xxf86vm drm gbm glapi xcb-dri2 xcb-glx \
		${WANTLIB-common}
# v4l2 is dlopen'd
WANTLIB-main +=	v4l2

WANTLIB-jack=	db jack vlccore ${WANTLIB-common}

AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.15
AUTORECONF =	./bootstrap

MODULES=	x11/qt4

COMPILER =	base-clang ports-gcc

WANTLIB-main += ${COMPILER_LIBCXX}

LIB_DEPENDS-main= ${MODQT4_LIB_DEPENDS} \
		archivers/libtar \
		audio/libcddb \
		audio/libsamplerate \
		audio/libvorbis \
		audio/opus \
		audio/speex \
		audio/taglib \
		devel/fribidi \
		devel/gettext,-runtime \
		devel/libdvdread \
		devel/libidn \
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
		multimedia/libv4l \
		multimedia/x264 \
		multimedia/x265 \
		security/gnutls \
		security/libgcrypt \
		textproc/libebml \
		textproc/libxml \
		x11/dbus \
		x11/gtk+2
LIB_DEPENDS-jack= ${BUILD_PKGPATH} \
		audio/jack
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/bison \
		devel/gettext,-tools \
		devel/libtool
RUN_DEPENDS-main= devel/desktop-file-utils \
		x11/gtk+3,-guic
RUN_DEPENDS-jack= ${BUILD_PKGPATH}

USE_GMAKE=	Yes
# Fails to link _pic libs properly resulting in undefined symbols in the live555 plugin
USE_LIBTOOL=	gnu
LIBTOOL_FLAGS=	--tag=disable-static
CONFIGURE_STYLE= autoreconf
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
		--disable-vdpau \
		--disable-vnc \
		--disable-vpx \
		--disable-vsxu \
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

post-install:
	@find ${PREFIX}/lib/vlc -name '*.la' -delete

.include <bsd.port.mk>

.if ${CHOSEN_COMPILER} == "base-clang"
CXXFLAGS+= -DXXX_CLANG_WORKAROUND=1
.endif

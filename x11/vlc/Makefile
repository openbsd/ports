COMMENT-main=	VideoLAN client; multimedia player
COMMENT-jack=	JACK audio output module for VLC

V=		3.0.20
DISTNAME=	vlc-${V}
PKGNAME-main=	${DISTNAME}
PKGNAME-jack=	vlc-jack-${V}
CATEGORIES=	x11
SITES=		https://download.videolan.org/pub/videolan/vlc/${V}/
EXTRACT_SUFX=	.tar.xz
REVISION-main=	1

USE_NOBTCFI=	Yes

SHARED_LIBS=	vlc		4.0 \
		vlc_xcb_events	0.0 \
		vlccore		4.0

HOMEPAGE=	https://www.videolan.org/vlc/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+ and GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB-common=	dbus-1 iconv idn intl m pthread
WANTLIB-main += ${WANTLIB-common} ${MODLUA_WANTLIB}
WANTLIB-main += EGL GL ICE Qt5Core Qt5Gui Qt5Svg Qt5Widgets Qt5X11Extras
WANTLIB-main += SDL SDL_image SM X11 X11-xcb Xau Xcomposite Xcursor
WANTLIB-main += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xpm Xrandr Xrender
WANTLIB-main += Xxf86vm absl_bad_optional_access absl_bad_variant_access
WANTLIB-main += absl_base absl_city absl_civil_time absl_cord absl_cord_internal
WANTLIB-main += absl_cordz_functions absl_cordz_handle absl_cordz_info
WANTLIB-main += absl_crc32c absl_crc_cord_state absl_crc_cpu_detect
WANTLIB-main += absl_crc_internal absl_debugging_internal absl_demangle_internal
WANTLIB-main += absl_die_if_null absl_examine_stack absl_exponential_biased
WANTLIB-main += absl_flags_commandlineflag absl_flags_commandlineflag_internal
WANTLIB-main += absl_flags_config absl_flags_internal absl_flags_marshalling
WANTLIB-main += absl_flags_private_handle_accessor absl_flags_program_name
WANTLIB-main += absl_flags_reflection absl_graphcycles_internal absl_hash
WANTLIB-main += absl_hashtablez_sampler absl_int128 absl_kernel_timeout_internal
WANTLIB-main += absl_log_entry absl_log_globals absl_log_initialize
WANTLIB-main += absl_log_internal_check_op absl_log_internal_conditions
WANTLIB-main += absl_log_internal_fnmatch absl_log_internal_format
WANTLIB-main += absl_log_internal_globals absl_log_internal_log_sink_set
WANTLIB-main += absl_log_internal_message absl_log_internal_nullguard
WANTLIB-main += absl_log_internal_proto absl_log_severity absl_log_sink
WANTLIB-main += absl_low_level_hash absl_malloc_internal absl_raw_hash_set
WANTLIB-main += absl_raw_logging_internal absl_spinlock_wait absl_stacktrace
WANTLIB-main += absl_status absl_statusor absl_str_format_internal
WANTLIB-main += absl_strerror absl_string_view absl_strings absl_strings_internal
WANTLIB-main += absl_symbolize absl_synchronization absl_throw_delegate
WANTLIB-main += absl_time absl_time_zone absl_vlog_config_internal
WANTLIB-main += aom archive ass atk-1.0 atk-bridge-2.0 atspi avahi-client
WANTLIB-main += avahi-common avcodec avformat avutil b2 bluray brotlidec
WANTLIB-main += brotlienc bz2 c cairo cairo-gobject cddb crypto dav1d
WANTLIB-main += double-conversion drm dvbpsi dvdnav dvdread ebml epoll-shim
WANTLIB-main += epoxy execinfo expat ffi fontconfig freetype fribidi
WANTLIB-main += gbm gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0
WANTLIB-main += gmodule-2.0 gmp gnutls gobject-2.0 gpg-error graphite2
WANTLIB-main += gsm gthread-2.0 gtk-3 harfbuzz hogweed icudata icui18n
WANTLIB-main += icuuc idn2 jpeg lz4 lzma matroska mp3lame nettle nfs
WANTLIB-main += notify ogg opus p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB-main += pcre2-16 pcre2-8 pixman-1 png postproc protobuf-lite
WANTLIB-main += rsvg-2 sharpyuv smb2 sndio soxr speex speexdsp ssl
WANTLIB-main += swresample swscale tag tar tasn1 theoradec theoraenc
WANTLIB-main += tiff udfread unibreak unistring usbhid utf8_range utf8_validity
WANTLIB-main += vorbis vorbisenc vpx wayland-client wayland-cursor
WANTLIB-main += wayland-egl webp x264 x265 xcb xcb-composite xcb-dri2
WANTLIB-main += xcb-dri3 xcb-glx xcb-keysyms xcb-present xcb-randr
WANTLIB-main += xcb-render xcb-shm xcb-sync xcb-xfixes xcb-xv xkbcommon
WANTLIB-main += xml2 xshmfence xvidcore z zstd
# v4l2 is dlopen'd
WANTLIB-main+=	v4l2

WANTLIB-jack=	db execinfo jack vlccore ${WANTLIB-common}

AUTOCONF_VERSION= 2.71
AUTOMAKE_VERSION= 1.16
AUTORECONF=	./bootstrap

MODULES=	lang/lua \
		x11/qt5

MODLUA_VERSION=	5.2
MODLUA_SA=	Yes
MODLUA_RUNDEP=	No
UPDATE_PLIST_ARGS+= -i MODLUA_DEP_VERSION

COMPILER=	base-clang ports-gcc

WANTLIB-main += ${COMPILER_LIBCXX}

LIB_DEPENDS-main= ${MODQT5_LIB_DEPENDS} \
		${MODLUA_LIB_DEPENDS} \
		x11/qt5/qtsvg,-main \
		x11/qt5/qtx11extras \
		archivers/libarchive \
		archivers/libtar \
		audio/libcddb \
		audio/libsoxr \
		audio/libvorbis \
		audio/opus \
		audio/speex \
		audio/taglib \
		devel/fribidi \
		devel/gettext,-runtime \
		devel/harfbuzz \
		devel/libdvdread \
		devel/libidn \
		devel/libnfs \
		devel/libnotify \
		devel/libsmb2 \
		devel/protobuf \
		devel/sdl \
		devel/sdl-image \
		graphics/ffmpeg \
		graphics/libdvbpsi \
		graphics/png \
		multimedia/libass \
		multimedia/libbluray \
		multimedia/libdvdnav \
		multimedia/libmatroska \
		multimedia/libv4l \
		multimedia/x264 \
		multimedia/x265 \
		net/avahi,-libs \
		security/gnutls \
		security/libgcrypt \
		textproc/libebml \
		textproc/libxml \
		x11/dbus \
		x11/gtk+3
LIB_DEPENDS-jack= ${BUILD_PKGPATH} \
		audio/jack
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		archivers/gtar \
		devel/bison \
		devel/gettext,-tools \
		devel/libtool
RUN_DEPENDS-main= devel/desktop-file-utils \
		x11/gtk+4,-guic
RUN_DEPENDS-jack= ${BUILD_PKGPATH}

USE_GMAKE=	Yes
LIBTOOL_FLAGS=	--tag=disable-static
CONFIGURE_STYLE= autoreconf
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/autotools
CONFIGURE_ARGS+=--disable-a52 \
		--disable-alsa \
		--disable-altivec \
		--disable-aom \
		--disable-aribb25 \
		--disable-aribsub \
		--disable-asdcp \
		--disable-caca \
		--disable-chromaprint \
		--disable-crystalhd \
		--disable-dav1d \
		--disable-dc1394 \
		--disable-dca \
		--disable-decklink \
		--disable-dsm \
		--disable-dv1394 \
		--disable-faad \
		--disable-flac \
		--disable-fluidlite \
		--disable-fluidsynth \
		--disable-freerdp \
		--disable-gme \
		--disable-goom \
		--disable-gst-decode \
		--disable-kate \
		--disable-kwallet \
		--disable-libmpeg2 \
		--disable-libplacebo \
		--disable-libva \
		--disable-linsys \
		--disable-live555 \
		--disable-mad \
		--disable-mfx \
		--disable-microdns \
		--disable-mmal \
		--disable-mpg123 \
		--disable-mod \
		--disable-mpc \
		--disable-mtp \
		--disable-oggspots \
		--disable-opencv \
		--disable-projectm \
		--disable-pulse \
		--disable-samplerate \
		--disable-schroedinger \
		--disable-secret \
		--disable-sftp \
		--disable-shine \
		--disable-shout \
		--disable-sid \
		--disable-smbclient \
		--disable-spatialaudio \
		--disable-srt \
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
		--enable-smb2 \
		--without-contrib \
		--with-kde-solid=${LOCALBASE}/share/apps/solid/actions
CONFIGURE_ENV+=	BUILDCC="${CC}" \
		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		LIBS_libvlccore="-lexecinfo" \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/qt5/pkgconfig" \
		RCC="${LOCALBASE}/bin/rcc-qt5" \
		LUAC="${LOCALBASE}/bin/luac${MODLUA_DEP_VERSION}"

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

post-extract:
	@ln -sf ${LOCALBASE}/bin/gtar ${WRKDIR}/bin/tar

post-install:
	@find ${PREFIX}/lib/vlc -name '*.la' -delete

.include <bsd.port.mk>

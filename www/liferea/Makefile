COMMENT=	simple GTK desktop news aggregator

V=		1.16.5
DISTNAME=	liferea-${V}

CATEGORIES=	www news x11

HOMEPAGE=	https://lzone.de/liferea/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL LLVM X11 X11-xcb Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xxf86vm aom aspell atk-1.0 atk-bridge-2.0 atspi
WANTLIB += avif brotlicommon brotlidec brotlienc c cairo cairo-gobject
WANTLIB += dav1d dbus-1 drm drm_amdgpu elf enchant-2 epoll-shim
WANTLIB += epoxy execinfo expat ffi flite flite_cmu_grapheme_lang
WANTLIB += flite_cmu_grapheme_lex flite_cmu_indic_lang flite_cmu_indic_lex
WANTLIB += flite_cmu_time_awb flite_cmu_us_awb flite_cmu_us_kal
WANTLIB += flite_cmu_us_kal16 flite_cmu_us_rms flite_cmu_us_slt
WANTLIB += flite_cmulex flite_usenglish fontconfig freetype fribidi
WANTLIB += gbm gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += girepository-2.0 glapi glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error graphite2 gstallocators-1.0 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstfft-1.0 gstgl-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gsttranscoder-1.0 gstvideo-1.0 gthread-2.0
WANTLIB += gtk-3 harfbuzz harfbuzz-icu hwy hyphen iconv icudata
WANTLIB += icui18n icuuc idn2 intl javascriptcoregtk-4.1 jpeg
WANTLIB += json-glib-1.0 jxl jxl_cms lcms2 lzma m nghttp2 orc-0.4
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pciaccess pcre2-8
WANTLIB += peas-2 pixman-1 png psl secret-1 sharpyuv sndio soup-3.0
WANTLIB += sqlite3 tasn1 unistring wayland-client wayland-cursor
WANTLIB += wayland-egl wayland-server webkit2gtk-4.1 webp webpdemux
WANTLIB += webpmux woff2common woff2dec xcb xcb-dri2 xcb-dri3
WANTLIB += xcb-glx xcb-present xcb-randr xcb-render xcb-shm xcb-sync
WANTLIB += xcb-xfixes xkbcommon xml2 xshmfence xslt z

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
WANTLIB += drm_intel
.endif

COMPILER=	base-clang ports-gcc

SITES=		https://github.com/lwindolf/liferea/releases/download/v${V}/

EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/dconf \
		lang/python \
		textproc/intltool

USE_GMAKE=	Yes

BUILD_DEPENDS=	devel/gobject-introspection

LIB_DEPENDS=	devel/json-glib \
		devel/libpeas2 \
		textproc/enchant2 \
		www/webkitgtk4,webkitgtk41

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+4,-guic

# lib/liferea/plugins/{libnotify,media-player}.py
RUN_DEPENDS +=	devel/libnotify \
		multimedia/gstreamer1/core

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--docdir=${PREFIX}/share/doc/liferea
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# https://github.com/lwindolf/liferea/issues/767
MAKE_ENV +=	WEBKIT_DISABLE_COMPOSITING_MODE=1

FAKE_FLAGS=	htmldocdir="${PREFIX}/share/doc/liferea/html"

post-install:
	rm ${PREFIX}/lib/liferea/web-extension/*.{a,la}
	${MODPY_COMPILEALL} ${PREFIX}/lib/liferea/plugins/

.include <bsd.port.mk>

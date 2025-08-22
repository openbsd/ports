COMMENT=	simple GTK desktop news aggregator

V=		1.16.1
DISTNAME=	liferea-${V}

CATEGORIES=	www news x11

HOMEPAGE=	https://lzone.de/liferea/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL LLVM X11 X11-xcb Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xxf86vm aom aspell atk-1.0 atk-bridge-2.0 atspi
WANTLIB += avif brotlicommon brotlidec brotlienc c cairo cairo-gobject
WANTLIB += dav1d dbus-1 drm drm_amdgpu drm_intel elf enchant-2
WANTLIB += epoll-shim epoxy execinfo expat ffi flite flite_cmu_grapheme_lang
WANTLIB += flite_cmu_grapheme_lex flite_cmu_indic_lang flite_cmu_indic_lex
WANTLIB += flite_cmu_time_awb flite_cmu_us_awb flite_cmu_us_kal
WANTLIB += flite_cmu_us_kal16 flite_cmu_us_rms flite_cmu_us_slt
WANTLIB += flite_cmulex flite_usenglish fontconfig freetype fribidi
WANTLIB += gbm gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += glapi glib-2.0 gmodule-2.0 gobject-2.0 gpg-error graphite2
WANTLIB += gstallocators-1.0 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstfft-1.0 gstgl-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gsttranscoder-1.0 gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += harfbuzz-icu hwy hyphen iconv icudata icui18n icuuc
WANTLIB += idn2 intl javascriptcoregtk-4.1 jpeg json-glib-1.0
WANTLIB += jxl jxl_cms lcms2 lzma m nghttp2 orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pciaccess pcre2-8 peas-2
WANTLIB += pixman-1 png psl secret-1 sharpyuv sndio soup-3.0 sqlite3
WANTLIB += tasn1 unistring wayland-client wayland-cursor wayland-egl
WANTLIB += wayland-server webkit2gtk-4.1 webp webpdemux webpmux
WANTLIB += woff2common woff2dec xcb xcb-dri2 xcb-dri3 xcb-glx
WANTLIB += xcb-present xcb-randr xcb-render xcb-shm xcb-sync xcb-xfixes
WANTLIB += xkbcommon xml2 xshmfence xslt z

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

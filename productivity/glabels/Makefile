COMMENT =		labels and business card designer

GNOME_PROJECT =		glabels
GNOME_VERSION =		3.4.1
REVISION =		14

CATEGORIES =		productivity graphics

SHARED_LIBS +=  glabels-3.0               0.0 # 8.0
SHARED_LIBS +=  glbarcode-3.0             0.0 # 0.0

HOMEPAGE =		http://glabels.org/

# GPLv3/LGPLv3/MIT
# Attribution-ShareAlike 3.0 Unported
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender absl_bad_optional_access
WANTLIB += absl_bad_variant_access absl_base absl_city absl_civil_time
WANTLIB += absl_cord absl_cord_internal absl_cordz_functions absl_cordz_handle
WANTLIB += absl_cordz_info absl_debugging_internal absl_demangle_internal
WANTLIB += absl_exponential_biased absl_graphcycles_internal absl_hash
WANTLIB += absl_hashtablez_sampler absl_int128 absl_log_severity
WANTLIB += absl_low_level_hash absl_malloc_internal absl_raw_hash_set
WANTLIB += absl_raw_logging_internal absl_spinlock_wait absl_stacktrace
WANTLIB += absl_strings absl_strings_internal absl_symbolize absl_synchronization
WANTLIB += absl_throw_delegate absl_time absl_time_zone atk-1.0
WANTLIB += atk-bridge-2.0 boost_atomic-mt boost_chrono-mt boost_date_time-mt
WANTLIB += boost_system-mt boost_thread-mt brotlicommon brotlidec
WANTLIB += c cairo cairo-gobject camel-1.2 db ebackend-1.2 ebook-1.2
WANTLIB += ebook-contacts-1.2 edata-book-1.2 edataserver-1.2 epoxy
WANTLIB += execinfo expat ffi fontconfig freetype fribidi gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error graphite2 gtk-3 harfbuzz iconv icudata icui18n
WANTLIB += icuuc idn2 iec16022 intl jpeg json-glib-1.0 lzma m
WANTLIB += nghttp2 nspr4 nss3 nssutil3 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre2-8 phonenumber pixman-1 plc4 plds4
WANTLIB += png protobuf psl qrencode rsvg-2 secret-1 smime3 soup-3.0
WANTLIB += sqlite3 ssl3 unistring xcb xcb-render xcb-shm xml2
WANTLIB += z

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/dconf \
			x11/gnome

LIB_DEPENDS =		databases/evolution-data-server \
			graphics/iec16022 \
			graphics/libqrencode \
			x11/gnome/librsvg \
			x11/gtk+3

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache shared-mime-info yelp

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>

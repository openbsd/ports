COMMENT =		labels and business card designer

GNOME_PROJECT =		glabels
GNOME_VERSION =		3.4.1
REVISION =		20

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
WANTLIB += absl_cordz_info absl_crc32c absl_crc_cord_state absl_crc_cpu_detect
WANTLIB += absl_crc_internal absl_debugging_internal absl_decode_rust_punycode
WANTLIB += absl_demangle_internal absl_demangle_rust absl_die_if_null
WANTLIB += absl_examine_stack absl_exponential_biased absl_flags_commandlineflag
WANTLIB += absl_flags_commandlineflag_internal absl_flags_config
WANTLIB += absl_flags_internal absl_flags_marshalling absl_flags_private_handle_accessor
WANTLIB += absl_flags_program_name absl_flags_reflection absl_graphcycles_internal
WANTLIB += absl_hash absl_hashtablez_sampler absl_int128 absl_kernel_timeout_internal
WANTLIB += absl_log_entry absl_log_globals absl_log_initialize
WANTLIB += absl_log_internal_check_op absl_log_internal_conditions
WANTLIB += absl_log_internal_fnmatch absl_log_internal_format
WANTLIB += absl_log_internal_globals absl_log_internal_log_sink_set
WANTLIB += absl_log_internal_message absl_log_internal_nullguard
WANTLIB += absl_log_internal_proto absl_log_severity absl_log_sink
WANTLIB += absl_low_level_hash absl_malloc_internal absl_random_distributions
WANTLIB += absl_random_internal_platform absl_random_internal_pool_urbg
WANTLIB += absl_random_internal_randen absl_random_internal_randen_hwaes
WANTLIB += absl_random_internal_randen_hwaes_impl absl_random_internal_randen_slow
WANTLIB += absl_random_internal_seed_material absl_random_seed_gen_exception
WANTLIB += absl_random_seed_sequences absl_raw_hash_set absl_raw_logging_internal
WANTLIB += absl_spinlock_wait absl_stacktrace absl_status absl_statusor
WANTLIB += absl_str_format_internal absl_strerror absl_string_view
WANTLIB += absl_strings absl_strings_internal absl_symbolize absl_synchronization
WANTLIB += absl_throw_delegate absl_time absl_time_zone absl_utf8_for_code_point
WANTLIB += absl_vlog_config_internal atk-1.0 atk-bridge-2.0 atspi
WANTLIB += boost_atomic-mt boost_chrono-mt boost_date_time-mt
WANTLIB += boost_system-mt boost_thread-mt brotlicommon brotlidec
WANTLIB += c cairo cairo-gobject camel-1.2 db dbus-1 ebackend-1.2
WANTLIB += ebook-1.2 ebook-contacts-1.2 edata-book-1.2 edataserver-1.2
WANTLIB += epoll-shim epoxy execinfo expat ffi fontconfig freetype
WANTLIB += fribidi gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gpg-error graphite2 gtk-3 harfbuzz
WANTLIB += iconv icudata icui18n icuuc idn2 iec16022 intl jpeg
WANTLIB += json-glib-1.0 lzma m nghttp2 nspr4 nss3 nssutil3 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre2-8 phonenumber pixman-1
WANTLIB += plc4 plds4 png protobuf psl qrencode rsvg-2 secret-1
WANTLIB += smime3 soup-3.0 sqlite3 ssl3 unistring utf8_validity
WANTLIB += wayland-client wayland-cursor wayland-egl xcb xcb-render
WANTLIB += xcb-shm xkbcommon xml2 z

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/dconf \
			x11/gnome

LIB_DEPENDS =		databases/evolution-data-server \
			graphics/iec16022 \
			graphics/libqrencode \
			x11/gnome/librsvg \
			x11/gtk+3

# unreferenced and unused, but linked against
# probably picked up through some dependency's .pc file
LIB_DEPENDS +=		devel/abseil-cpp

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache shared-mime-info yelp

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>

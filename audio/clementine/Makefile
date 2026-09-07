COMMENT =	music player

VERSION =	1.4.1
REVISION =	0
PL =		76
GH_ACCOUNT =	clementine-player
GH_PROJECT =	Clementine
GH_TAGNAME =	${VERSION}-${PL}-gfd1617827
PKGNAME =	clementine-${VERSION}pl${PL}
EPOCH =		0

CATEGORIES =	audio x11

HOMEPAGE =	https://www.clementine-player.org/

# GPLv2/LGPLv2/GFDL
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5OpenGL Qt5Sql Qt5Widgets Qt5X11Extras
WANTLIB += Qt5Xml X11 absl_base absl_base_cpu_detect absl_city
WANTLIB += absl_civil_time absl_cord absl_cord_internal absl_cordz_functions
WANTLIB += absl_cordz_handle absl_cordz_info absl_crc32c absl_crc_cord_state
WANTLIB += absl_crc_internal absl_debugging_internal absl_decode_rust_punycode
WANTLIB += absl_demangle_internal absl_demangle_rust absl_die_if_null
WANTLIB += absl_examine_stack absl_exponential_biased absl_flags_commandlineflag
WANTLIB += absl_flags_commandlineflag_internal absl_flags_config
WANTLIB += absl_flags_internal absl_flags_marshalling absl_flags_private_handle_accessor
WANTLIB += absl_flags_program_name absl_flags_reflection absl_graphcycles_internal
WANTLIB += absl_hardening absl_hash absl_hashtablez_sampler absl_int128
WANTLIB += absl_kernel_timeout_internal absl_leak_check absl_log_entry
WANTLIB += absl_log_globals absl_log_initialize absl_log_internal_check_op
WANTLIB += absl_log_internal_conditions absl_log_internal_fnmatch
WANTLIB += absl_log_internal_format absl_log_internal_globals
WANTLIB += absl_log_internal_log_sink_set absl_log_internal_message
WANTLIB += absl_log_internal_nullguard absl_log_internal_proto
WANTLIB += absl_log_internal_structured_proto absl_log_severity
WANTLIB += absl_log_sink absl_malloc_internal absl_random_distributions
WANTLIB += absl_random_internal_entropy_pool absl_random_internal_platform
WANTLIB += absl_random_internal_randen absl_random_internal_randen_hwaes
WANTLIB += absl_random_internal_randen_hwaes_impl absl_random_internal_randen_slow
WANTLIB += absl_random_internal_seed_material absl_random_seed_gen_exception
WANTLIB += absl_random_seed_sequences absl_raw_hash_set absl_raw_logging_internal
WANTLIB += absl_source_location absl_spinlock_wait absl_stacktrace
WANTLIB += absl_status absl_statusor absl_str_format_internal
WANTLIB += absl_strerror absl_strings absl_strings_internal absl_symbolize
WANTLIB += absl_synchronization absl_throw_delegate absl_time
WANTLIB += absl_time_zone absl_tracing_internal absl_utf8_for_code_point
WANTLIB += absl_vlog_config_internal c cdio chromaprint execinfo
WANTLIB += fftw3 gio-2.0 glib-2.0 gobject-2.0 gpod gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 iconv intl lastfm5 m mtp mygpo-qt5
WANTLIB += protobuf pulse sqlite3 tag utf8_validity z

# C++17
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c++

MODULES =		devel/cmake \
			x11/qt5

BUILD_DEPENDS =		devel/boost \
			devel/gettext,-tools \
			devel/sparsehash

RUN_DEPENDS =		devel/desktop-file-utils \
			multimedia/gstreamer1/plugins-good \
			multimedia/gstreamer1/libav \
			x11/gtk+4,-guic

LIB_DEPENDS =		audio/chromaprint \
			audio/libcdio \
			audio/libgpod \
			audio/liblastfm>=1.1.0 \
			audio/pulseaudio \
			audio/taglib>=2.0.2 \
			converters/libiconv \
			databases/sqlite3 \
			devel/abseil-cpp \
			devel/gettext,-runtime \
			devel/glib2 \
			devel/libmtp \
			devel/protobuf \
			math/fftw3 \
			multimedia/gstreamer1/core \
			multimedia/gstreamer1/plugins-base \
			net/libmygpo-qt>=1.1.0 \
			x11/qt5/qtx11extras


TEST_DEPENDS =		${MODPY_BUILD_DEPENDS}

# stupidity
CONFIGURE_ARGS +=	-DBUILD_WERROR=ON \
			-DCCACHE_EXECUTABLE=OFF \
			-DUSE_SYSTEM_TAGLIB=ON

MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

post-extract:
	cp ${FILESDIR}/config.h.in ${WRKSRC}/ext/libclementine-common/

.include <bsd.port.mk>

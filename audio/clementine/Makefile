COMMENT =	music player

VERSION =	1.4.1
GH_ACCOUNT =	clementine-player
GH_PROJECT =	Clementine
GH_TAGNAME =	${VERSION}-44-g41bcdca7f
PKGNAME =	clementine-${VERSION}
EPOCH =		0
REVISION =	1

CATEGORIES =	audio x11

HOMEPAGE =	https://www.clementine-player.org/

# GPLv2/LGPLv2/GFDL
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU Qt5Concurrent Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Network Qt5OpenGL Qt5Sql Qt5Widgets
WANTLIB += Qt5X11Extras Qt5Xml X11 Xext Xi Xmu absl_base absl_city
WANTLIB += absl_civil_time absl_cord absl_cord_internal absl_cordz_functions
WANTLIB += absl_cordz_handle absl_cordz_info absl_crc32c absl_crc_cord_state
WANTLIB += absl_crc_cpu_detect absl_crc_internal absl_debugging_internal
WANTLIB += absl_decode_rust_punycode absl_demangle_internal absl_demangle_rust
WANTLIB += absl_die_if_null absl_examine_stack absl_exponential_biased
WANTLIB += absl_flags_commandlineflag absl_flags_commandlineflag_internal
WANTLIB += absl_flags_config absl_flags_internal absl_flags_marshalling
WANTLIB += absl_flags_private_handle_accessor absl_flags_program_name
WANTLIB += absl_flags_reflection absl_graphcycles_internal absl_hash
WANTLIB += absl_hashtablez_sampler absl_int128 absl_kernel_timeout_internal
WANTLIB += absl_leak_check absl_log_entry absl_log_globals absl_log_initialize
WANTLIB += absl_log_internal_check_op absl_log_internal_conditions
WANTLIB += absl_log_internal_fnmatch absl_log_internal_format
WANTLIB += absl_log_internal_globals absl_log_internal_log_sink_set
WANTLIB += absl_log_internal_message absl_log_internal_nullguard
WANTLIB += absl_log_internal_proto absl_log_internal_structured_proto
WANTLIB += absl_log_severity absl_log_sink
WANTLIB += absl_malloc_internal absl_random_distributions absl_random_internal_entropy_pool
WANTLIB += absl_random_internal_platform absl_random_internal_randen
WANTLIB += absl_random_internal_randen_hwaes absl_random_internal_randen_hwaes_impl
WANTLIB += absl_random_internal_randen_slow absl_random_internal_seed_material
WANTLIB += absl_random_seed_gen_exception absl_random_seed_sequences
WANTLIB += absl_raw_hash_set absl_raw_logging_internal absl_spinlock_wait
WANTLIB += absl_stacktrace absl_status absl_statusor absl_str_format_internal
WANTLIB += absl_strerror absl_string_view absl_strings absl_strings_internal
WANTLIB += absl_symbolize absl_synchronization absl_throw_delegate
WANTLIB += absl_time absl_time_zone absl_tracing_internal absl_utf8_for_code_point
WANTLIB += absl_vlog_config_internal c cdio chromaprint execinfo
WANTLIB += fftw3 gio-2.0 glib-2.0 gobject-2.0 gpod gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 iconv intl lastfm5 m mtp mygpo-qt5
WANTLIB += protobuf pulse sqlite3 tag z

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
			devel/libmtp \
			devel/protobuf \
			graphics/glew \
			math/fftw3 \
			multimedia/gstreamer1/core \
			multimedia/gstreamer1/plugins-base \
			net/libmygpo-qt>=1.1.0 \
			x11/qt5/qtx11extras

TEST_DEPENDS =		${MODPY_BUILD_DEPENDS}

# Unported stuff
CONFIGURE_ARGS =	-DENABLE_SPOTIFY_BLOB=OFF

# stupidity
CONFIGURE_ARGS +=	-DBUILD_WERROR=ON \
			-DUSE_SYSTEM_TAGLIB=ON

# XXX Builds tend to sometimes omit projectM presets when this option
# is missing. To be investigated.
CONFIGURE_ARGS +=	-DBUNDLE_PROJECTM_PRESETS=ON

MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

#CXXFLAGS+=" -Wno-error=cpp"

post-extract:
	cp ${FILESDIR}/config.h.in ${WRKSRC}/ext/libclementine-common/

.include <bsd.port.mk>

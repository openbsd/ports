COMMENT =		c++ protocol buffers

CPPMAJOR =		5
PROTOBUF_VERSION =	26.1
V =			${CPPMAJOR}.${PROTOBUF_VERSION}
TAG =			v${PROTOBUF_VERSION:S/rc-/rc/}
DISTNAME =		protobuf-${PROTOBUF_VERSION}
PKGNAME =		protobuf-${V:S/-//g}
DISTFILES =		protobuf-${PROTOBUF_VERSION}.tar.gz

PROTOC_VERSION =	${PROTOBUF_VERSION}.0
SUBST_VARS +=		PROTOC_VERSION

SHARED_LIBS +=		protobuf-lite	22.0
SHARED_LIBS +=		protobuf	24.0
SHARED_LIBS +=		protoc		26.0
SHARED_LIBS +=		utf8_range	0.1
SHARED_LIBS +=		utf8_validity	0.1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/protocolbuffers/protobuf/

SITES =	https://github.com/protocolbuffers/protobuf/releases/download/${TAG}/

# New BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} absl_bad_optional_access absl_bad_variant_access
WANTLIB += absl_base absl_city absl_civil_time absl_cord absl_cord_internal
WANTLIB += absl_cordz_functions absl_cordz_handle absl_cordz_info
WANTLIB += absl_crc32c absl_crc_cord_state absl_crc_cpu_detect
WANTLIB += absl_crc_internal absl_debugging_internal absl_demangle_internal
WANTLIB += absl_die_if_null absl_examine_stack absl_exponential_biased
WANTLIB += absl_flags_commandlineflag absl_flags_commandlineflag_internal
WANTLIB += absl_flags_config absl_flags_internal absl_flags_marshalling
WANTLIB += absl_flags_private_handle_accessor absl_flags_program_name
WANTLIB += absl_flags_reflection absl_graphcycles_internal absl_hash
WANTLIB += absl_hashtablez_sampler absl_int128 absl_kernel_timeout_internal
WANTLIB += absl_log_entry absl_log_globals absl_log_initialize
WANTLIB += absl_log_internal_check_op absl_log_internal_conditions
WANTLIB += absl_log_internal_fnmatch absl_log_internal_format absl_log_internal_globals
WANTLIB += absl_log_internal_log_sink_set absl_log_internal_message
WANTLIB += absl_log_internal_nullguard absl_log_internal_proto
WANTLIB += absl_log_severity absl_log_sink absl_low_level_hash
WANTLIB += absl_malloc_internal absl_raw_hash_set absl_raw_logging_internal
WANTLIB += absl_spinlock_wait absl_stacktrace absl_status absl_statusor
WANTLIB += absl_str_format_internal absl_strerror absl_string_view
WANTLIB += absl_strings absl_strings_internal absl_symbolize absl_synchronization
WANTLIB += absl_throw_delegate absl_time absl_time_zone absl_vlog_config_internal c m z

LIB_DEPENDS +=		devel/abseil-cpp

# C++17
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-Dprotobuf_ABSL_PROVIDER=package
CONFIGURE_ARGS +=	-DABSL_ROOT_DIR=${LOCALBASE}/include/absl
CONFIGURE_ARGS +=	-Dprotobuf_BUILD_SHARED_LIBS=ON

# Tests have been broken for a long time.
CONFIGURE_ARGS +=	-Dprotobuf_BUILD_TESTS=OFF
NO_TEST =		Yes

.include <bsd.port.mk>

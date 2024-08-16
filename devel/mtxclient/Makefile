COMMENT =	client API for Matrix, built on libcurl
CATEGORIES =	devel

SHARED_LIBS +=  matrix_client	3.0

GH_ACCOUNT =	Nheko-Reborn
GH_PROJECT =	mtxclient
GH_TAGNAME =	v0.10.0
REVISION =	1

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} absl_bad_optional_access absl_bad_variant_access
WANTLIB += absl_base absl_city absl_civil_time absl_cord absl_cord_internal
WANTLIB += absl_cordz_functions absl_cordz_handle absl_cordz_info
WANTLIB += absl_crc32c absl_crc_cord_state absl_crc_cpu_detect
WANTLIB += absl_crc_internal absl_debugging_internal absl_decode_rust_punycode
WANTLIB += absl_demangle_internal absl_demangle_rust absl_examine_stack
WANTLIB += absl_exponential_biased absl_flags_commandlineflag
WANTLIB += absl_flags_commandlineflag_internal absl_flags_config
WANTLIB += absl_flags_internal absl_flags_marshalling absl_flags_private_handle_accessor
WANTLIB += absl_flags_program_name absl_flags_reflection absl_graphcycles_internal
WANTLIB += absl_hash absl_hashtablez_sampler absl_int128 absl_kernel_timeout_internal
WANTLIB += absl_log_entry absl_log_globals absl_log_internal_check_op
WANTLIB += absl_log_internal_conditions absl_log_internal_fnmatch
WANTLIB += absl_log_internal_format absl_log_internal_globals
WANTLIB += absl_log_internal_log_sink_set absl_log_internal_message
WANTLIB += absl_log_internal_nullguard absl_log_internal_proto
WANTLIB += absl_log_severity absl_log_sink absl_low_level_hash
WANTLIB += absl_malloc_internal absl_raw_hash_set absl_raw_logging_internal
WANTLIB += absl_spinlock_wait absl_stacktrace absl_str_format_internal
WANTLIB += absl_strerror absl_string_view absl_strings absl_strings_internal
WANTLIB += absl_symbolize absl_synchronization absl_throw_delegate
WANTLIB += absl_time absl_time_zone absl_utf8_for_code_point absl_vlog_config_internal
WANTLIB += coeurl crypto execinfo fmt m olm re2 spdlog ssl

MODULES =	devel/cmake

BUILD_DEPENDS = devel/libevent2 \
		textproc/nlohmann-json

LIB_DEPENDS =	devel/coeurl>=0.3.0 \
		devel/olm>=3.2.7 \
		devel/spdlog \
		textproc/re2

# C++20
COMPILER =	base-clang ports-gcc

CONFIGURE_ARGS +=	-DBUILD_LIB_EXAMPLES=OFF

# XXX stalls on first test;  reenable if we know how to prepare for/run it
CONFIGURE_ARGS +=	-DBUILD_LIB_TESTS=OFF

TEST_IS_INTERACTIVE =	requires local synapse server

.include <bsd.port.mk>

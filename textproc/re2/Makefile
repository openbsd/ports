COMMENT =		non-backtracking regular expression engine
V =			2025-11-05
REVISION =		1
DISTNAME =		re2-${V}
PKGNAME =		re2-${V:S/-//g}

SHARED_LIBS =		re2	5.0

CATEGORIES =		textproc devel

HOMEPAGE =		https://github.com/google/re2
SITES =			https://github.com/google/re2/releases/download/${V}/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} absl_base absl_base_cpu_detect absl_city
WANTLIB += absl_civil_time absl_cord absl_cord_internal absl_cordz_functions
WANTLIB += absl_cordz_handle absl_cordz_info absl_crc32c absl_crc_cord_state
WANTLIB += absl_crc_internal absl_debugging_internal absl_decode_rust_punycode
WANTLIB += absl_demangle_internal absl_demangle_rust absl_examine_stack
WANTLIB += absl_exponential_biased absl_flags_commandlineflag
WANTLIB += absl_flags_commandlineflag_internal absl_flags_config
WANTLIB += absl_flags_internal absl_flags_marshalling absl_flags_private_handle_accessor
WANTLIB += absl_flags_program_name absl_flags_reflection absl_graphcycles_internal
WANTLIB += absl_hardening absl_hash absl_hashtablez_sampler absl_int128
WANTLIB += absl_kernel_timeout_internal absl_leak_check absl_log_entry
WANTLIB += absl_log_globals absl_log_internal_check_op absl_log_internal_conditions
WANTLIB += absl_log_internal_fnmatch absl_log_internal_format
WANTLIB += absl_log_internal_globals absl_log_internal_log_sink_set
WANTLIB += absl_log_internal_message absl_log_internal_nullguard
WANTLIB += absl_log_internal_proto absl_log_internal_structured_proto
WANTLIB += absl_log_severity absl_log_sink absl_malloc_internal
WANTLIB += absl_raw_hash_set absl_raw_logging_internal absl_source_location
WANTLIB += absl_spinlock_wait absl_stacktrace absl_str_format_internal
WANTLIB += absl_strerror absl_strings absl_strings_internal absl_symbolize
WANTLIB += absl_synchronization absl_throw_delegate absl_time
WANTLIB += absl_time_zone absl_tracing_internal absl_utf8_for_code_point
WANTLIB += absl_vlog_config_internal m

# C++17
COMPILER =		base-clang ports-gcc

CXXFLAGS_ports-gcc =	-fdelete-null-pointer-checks

MODULES =		devel/cmake

LIB_DEPENDS =		devel/abseil-cpp

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON

.include <bsd.port.mk>

COMMENT =		c protocol buffers

V =			1.5.2
DISTNAME =		protobuf-c-$V
REVISION =		4

SHARED_LIBS =		protobuf-c 5.0	# 1.0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/protobuf-c/protobuf-c/wiki

SITES=		https://github.com/protobuf-c/protobuf-c/releases/download/v$V/

# New BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} absl_base absl_base_cpu_detect absl_city
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
WANTLIB += absl_vlog_config_internal c execinfo m protobuf protoc
WANTLIB += utf8_range utf8_validity z

COMPILER =		base-clang ports-gcc
CXXFLAGS +=		-std=gnu++17

CXXFLAGS_ports-gcc =	-fdelete-null-pointer-checks

LIB_DEPENDS =		devel/protobuf

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.72

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE =		Yes

SEPARATE_BUILD =	Yes

pre-configure:
	sed -i -E 's,(--plugin|--cpp_out),-I${LOCALBASE}/include &,' ${WRKSRC}/Makefile.in

.include <bsd.port.mk>

COMMENT =		HTTP/2-based RPC framework

MODPY_DISTV =		1.83.0
DISTNAME =		grpcio-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net

HOMEPAGE =		https://grpc.io/docs/languages/python/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE =	Yes

# C++17
COMPILER =		base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} absl_atomic_hook_test_helper absl_base
WANTLIB += absl_base_cpu_detect absl_city absl_civil_time absl_clock_interface
WANTLIB += absl_cord absl_cord_internal absl_cordz_functions absl_cordz_handle
WANTLIB += absl_cordz_info absl_cordz_sample_token absl_crc32c
WANTLIB += absl_crc_cord_state absl_crc_internal absl_debugging_internal
WANTLIB += absl_decode_rust_punycode absl_demangle_internal absl_demangle_rust
WANTLIB += absl_die_if_null absl_examine_stack absl_exception_safety_testing
WANTLIB += absl_exponential_biased absl_failure_signal_handler
WANTLIB += absl_flags_commandlineflag absl_flags_commandlineflag_internal
WANTLIB += absl_flags_config absl_flags_internal absl_flags_marshalling
WANTLIB += absl_flags_parse absl_flags_private_handle_accessor
WANTLIB += absl_flags_program_name absl_flags_reflection absl_flags_usage
WANTLIB += absl_flags_usage_internal absl_generic_printer_internal
WANTLIB += absl_graphcycles_internal absl_hardening absl_hash
WANTLIB += absl_hash_generator_testing absl_hashtable_profiler
WANTLIB += absl_hashtablez_sampler absl_int128 absl_kernel_timeout_internal
WANTLIB += absl_leak_check absl_log_entry absl_log_flags absl_log_globals
WANTLIB += absl_log_initialize absl_log_internal_check_op absl_log_internal_conditions
WANTLIB += absl_log_internal_fnmatch absl_log_internal_format
WANTLIB += absl_log_internal_globals absl_log_internal_log_sink_set
WANTLIB += absl_log_internal_message absl_log_internal_nullguard
WANTLIB += absl_log_internal_proto absl_log_internal_structured_proto
WANTLIB += absl_log_internal_test_actions absl_log_internal_test_helpers
WANTLIB += absl_log_internal_test_matchers absl_log_severity absl_log_sink
WANTLIB += absl_malloc_internal absl_per_thread_sem_test_common
WANTLIB += absl_periodic_sampler absl_poison absl_pow10_helper
WANTLIB += absl_profile_builder absl_random_distributions absl_random_internal_distribution_test_util
WANTLIB += absl_random_internal_entropy_pool absl_random_internal_platform
WANTLIB += absl_random_internal_randen absl_random_internal_randen_hwaes
WANTLIB += absl_random_internal_randen_hwaes_impl absl_random_internal_randen_slow
WANTLIB += absl_random_internal_seed_material absl_random_seed_gen_exception
WANTLIB += absl_random_seed_sequences absl_raw_hash_set absl_raw_logging_internal
WANTLIB += absl_scoped_mock_log absl_scoped_set_env absl_simulated_clock
WANTLIB += absl_source_location absl_spinlock_test_common absl_spinlock_wait
WANTLIB += absl_stack_consumption absl_stacktrace absl_status
WANTLIB += absl_status_builder absl_status_matchers absl_statusor
WANTLIB += absl_str_format_internal absl_strerror absl_strings
WANTLIB += absl_strings_internal absl_symbolize absl_synchronization
WANTLIB += absl_test_instance_tracker absl_throw_delegate absl_time
WANTLIB += absl_time_internal_test_util absl_time_zone absl_tracing_internal
WANTLIB += absl_utf8_for_code_point absl_vlog_config_internal
WANTLIB += cares crypto m re2 ssl z

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		devel/abseil-cpp:patch \
			devel/py-wheel \
			lang/cython \
			sysutils/xxhash

LIB_DEPENDS =		devel/abseil-cpp \
			net/libcares \
			textproc/re2

RUN_DEPENDS =		devel/py-typing-extensions

# avoid warning spam, honour debug
CFLAGS +=		-Wno-ignored-attributes \
			-Wno-deprecated-declarations
MAKE_ENV =		GRPC_PYTHON_CFLAGS=${CFLAGS:Q}

.for _dep in ABSL CARES OPENSSL RE2 ZLIB
MAKE_ENV +=		GRPC_PYTHON_BUILD_SYSTEM_${_dep}=True
.endfor

BUNDLES_DIR =		${WRKSRC}/third_party
# system xxhash (header-only) is available through CFLAGS
UNUSED_BUNDLES =	abseil-cpp boringssl-with-bazel cares re2 zlib xxhash

post-extract:
	cd ${BUNDLES_DIR} && rm -rf ${UNUSED_BUNDLES}
	# Cython extension needs third_party/abseil-cpp/absl/log/initialize.cc
	ln -sf ${WRKDIR}/devel/abseil-cpp/abseil-cpp-*/ ${BUNDLES_DIR}/abseil-cpp

.include <bsd.port.mk>

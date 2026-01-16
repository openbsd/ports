COMMENT =	clang database generator

V =		3.1.6
DIST_TUPLE +=	github rizsotto Bear ${V} .
DISTNAME =	bear-${V}
REVISION =	5

CATEGORIES =	devel

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

#  GPL-3.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} absl_base absl_city absl_civil_time
WANTLIB += absl_cord absl_cord_internal absl_cordz_functions absl_cordz_handle
WANTLIB += absl_cordz_info absl_crc32c absl_crc_cord_state absl_crc_cpu_detect
WANTLIB += absl_crc_internal absl_debugging_internal absl_decode_rust_punycode
WANTLIB += absl_demangle_internal absl_demangle_rust absl_die_if_null
WANTLIB += absl_examine_stack absl_exponential_biased absl_flags_commandlineflag
WANTLIB += absl_flags_commandlineflag_internal absl_flags_config
WANTLIB += absl_flags_internal absl_flags_marshalling absl_flags_private_handle_accessor
WANTLIB += absl_flags_program_name absl_flags_reflection absl_graphcycles_internal
WANTLIB += absl_hash absl_hashtablez_sampler absl_int128 absl_kernel_timeout_internal
WANTLIB += absl_leak_check absl_log_entry absl_log_globals absl_log_initialize
WANTLIB += absl_log_internal_check_op absl_log_internal_conditions
WANTLIB += absl_log_internal_fnmatch absl_log_internal_format
WANTLIB += absl_log_internal_globals absl_log_internal_log_sink_set
WANTLIB += absl_log_internal_message absl_log_internal_nullguard
WANTLIB += absl_log_internal_proto absl_log_internal_structured_proto
WANTLIB += absl_log_severity absl_log_sink absl_malloc_internal
WANTLIB += absl_random_distributions absl_random_internal_entropy_pool
WANTLIB += absl_random_internal_platform absl_random_internal_randen
WANTLIB += absl_random_internal_randen_hwaes absl_random_internal_randen_hwaes_impl
WANTLIB += absl_random_internal_randen_slow absl_random_internal_seed_material
WANTLIB += absl_random_seed_gen_exception absl_random_seed_sequences
WANTLIB += absl_raw_hash_set absl_raw_logging_internal absl_spinlock_wait
WANTLIB += absl_stacktrace absl_status absl_statusor absl_str_format_internal
WANTLIB += absl_strerror absl_borrowed_fixup_buffer absl_strings absl_strings_internal
WANTLIB += absl_symbolize absl_synchronization absl_throw_delegate
WANTLIB += absl_time absl_time_zone absl_tracing_internal absl_utf8_for_code_point
WANTLIB += absl_vlog_config_internal c execinfo fmt gpr grpc grpc++
WANTLIB += m protobuf spdlog utf8_range utf8_validity

# C++17
COMPILER = base-clang ports-gcc

MODULES =		devel/cmake

BUILD_DEPENDS =		textproc/nlohmann-json

LIB_DEPENDS =		devel/abseil-cpp \
			devel/fmt \
			devel/protobuf \
			devel/spdlog \
			net/grpc

WRKDIST =		${WRKDIR}/Bear-${V}

CONFIGURE_ARGS =	-DENABLE_FUNC_TESTS=OFF \
			-DENABLE_UNIT_TESTS=OFF

# From FreeBSD
# After src commit 8ccd0b876e, bear can no longer intercept compile commands
# using the dynamic linker preload method.
# See https://github.com/rizsotto/Bear/issues/557 for details
CLANG_COMPILERS=	33 34 35 36 37 38 39 40 50 60 70 80 90 10 11 12 13 14 \
			15 16 17 18 19 20
GNU_COMPILERS=		34 42 43 44 45 46 47 48 49 5 6 7 8 9 10 11 12 13 14 15

ALL_COMPILERS=		cc c++ CC clang clang++ ${CLANG_COMPILERS:S|^|clang|} \
			${CLANG_COMPILERS:S|^|clang++|} \
			${CLANG_COMPILERS:S|^|cpp|} gcc g++ \
			${GNU_COMPILERS:S|^|gcc|} ${GNU_COMPILERS:S|^|g++|} \
			${GNU_COMPILERS:S|^|cpp|} icc icpc llvm-gcc llvm-c++ \
			llvm-g++
WRAPPERS=		${ALL_COMPILERS} R ar as bison ctangle cweave f77 flex \
			gfortran ld lex lint m2c makeinfo nm objcopy objdump pc \
			ranlib readelf strip tangle tex tex2dvi weave yacc

post-install:
.for w in ${WRAPPERS}
	ln -sf ${TRUEPREFIX}/lib/bear/wrapper  \
		${WRKINST}/${LOCALBASE}/lib/bear/wrapper.d/${w}
.endfor

.include <bsd.port.mk>

COMMENT =	abseil common libraries (C++)
CATEGORIES =	devel

GH_ACCOUNT =	abseil
GH_PROJECT =	${GH_ACCOUNT}-cpp
GH_TAGNAME =	20240116.1

HOMEPAGE =	https://abseil.io/

MAINTAINER =	Andrew Krasavin <noiseless-ak@yandex.ru>, \
		Klemens Nanni <kn@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

ABSL_LIBS = \
    scoped_mock_log atomic_hook_test_helper                   \
    bad_optional_access bad_variant_access base city civil_time cord \
    cord_internal cordz_functions cordz_handle cordz_info cordz_sample_token \
    crc32c crc_cord_state crc_cpu_detect crc_internal debugging_internal \
    demangle_internal die_if_null examine_stack exception_safety_testing \
    exponential_biased failure_signal_handler       flags_commandlineflag \
    flags_commandlineflag_internal flags_config flags_internal \
    flags_marshalling flags_parse flags_private_handle_accessor \
    flags_program_name flags_reflection flags_usage flags_usage_internal \
    graphcycles_internal hash hash_generator_testing hashtablez_sampler int128 \
    log_entry log_flags log_globals log_initialize log_internal_check_op \
    log_internal_conditions log_internal_format log_internal_globals \
    log_internal_log_sink_set log_internal_message log_internal_nullguard \
    log_internal_proto log_internal_test_actions log_internal_test_helpers \
    log_internal_test_matchers log_severity log_sink low_level_hash \
    malloc_internal per_thread_sem_test_common periodic_sampler pow10_helper \
    random_distributions random_internal_distribution_test_util \
    random_internal_platform random_internal_pool_urbg random_internal_randen \
    random_internal_randen_hwaes random_internal_randen_hwaes_impl \
    random_internal_randen_slow random_internal_seed_material \
    random_seed_gen_exception random_seed_sequences raw_hash_set \
    raw_logging_internal scoped_set_env spinlock_test_common spinlock_wait \
    stack_consumption stacktrace status statusor str_format_internal strerror \
    strings strings_internal symbolize synchronization test_instance_tracker \
    throw_delegate time time_internal_test_util time_zone \
    log_internal_fnmatch vlog_config_internal \
    kernel_timeout_internal string_view
.for _lib in ${ABSL_LIBS}
SHARED_LIBS +=		absl_${_lib}	4.0	# 2401.0.0
.endfor

WANTLIB += ${COMPILER_LIBCXX} execinfo gmock gtest m

# C++17
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c++
MODULES =		devel/cmake

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON \
			-DABSL_USE_EXTERNAL_GOOGLETEST=${LOCALBASE}/include/gtest \
			-DBUILD_TESTING=ON \
			-DABSL_BUILD_TESTING=ON

# A future Abseil release will default ABSL_PROPAGATE_CXX_STD=ON
# for CMake >= 3.8. Abseil developers recommend enabling this option
# to ensure that our project builds correctly.
CONFIGURE_ARGS +=      -DABSL_PROPAGATE_CXX_STD=ON

LIB_DEPENDS +=		devel/gtest>=1.14.0

TESTTMP =		${WRKDIR}/tmp
TESTLDPATH =		${WRKDIR}/ldpath
TEST_ENV +=		TMPDIR=${TESTTMP} \
			LD_LIBRARY_PATH=/usr/lib:${TESTLDPATH}

pre-test:
	mkdir -p ${TESTTMP} ${TESTLDPATH}
	find ${WRKBUILD} -type f -name 'libabsl*.so.*' \
	    -exec ln -s {} ${TESTLDPATH}/ \;

.include <bsd.port.mk>

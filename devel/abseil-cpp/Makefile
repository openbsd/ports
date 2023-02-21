COMMENT =	abseil common libraries (C++)
CATEGORIES =	devel

GH_ACCOUNT =	abseil
GH_PROJECT =	${GH_ACCOUNT}-cpp
GH_TAGNAME =	20230125.1
REVISION =	1

HOMEPAGE =	https://abseil.io/

MAINTAINER =	Andrew Krasavin <noiseless-ak@yandex.ru>, \
		Klemens Nanni <kn@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

ABSL_LIBS = \
    bad_any_cast_impl bad_optional_access bad_variant_access base city \
    civil_time cord cord_internal cordz_functions cordz_handle cordz_info \
    cordz_sample_token crc32c crc_cord_state crc_cpu_detect crc_internal \
    debugging_internal demangle_internal die_if_null examine_stack \
    exponential_biased failure_signal_handler flags flags_commandlineflag \
    flags_commandlineflag_internal flags_config flags_internal \
    flags_marshalling flags_parse flags_private_handle_accessor \
    flags_program_name flags_reflection flags_usage flags_usage_internal \
    graphcycles_internal hash hashtablez_sampler int128 log_entry log_flags \
    log_globals log_initialize log_internal_check_op log_internal_conditions \
    log_internal_format log_internal_globals log_internal_log_sink_set \
    log_internal_message log_internal_nullguard log_internal_proto \
    log_severity log_sink low_level_hash malloc_internal periodic_sampler \
    random_distributions random_internal_distribution_test_util \
    random_internal_platform random_internal_pool_urbg random_internal_randen \
    random_internal_randen_hwaes random_internal_randen_hwaes_impl \
    random_internal_randen_slow random_internal_seed_material \
    random_seed_gen_exception random_seed_sequences raw_hash_set \
    raw_logging_internal scoped_set_env spinlock_wait stacktrace status \
    statusor str_format_internal strerror strings strings_internal symbolize \
    synchronization throw_delegate time time_zone
# TESTONLY but needed by other ports
ABSL_LIBS +=	scoped_mock_log
.for _lib in ${ABSL_LIBS}
SHARED_LIBS +=		absl_${_lib}	2.0	# 2301.0.0
.endfor

# on updates, build with `ALL_TARGET=all' once to pick up new libraries
#
# everything (shared libraries) except tests
ALL_TARGET =		${ABSL_LIBS}

# C++17
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c++
WANTLIB =		${COMPILER_LIBCXX} execinfo gmock gtest m
MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS:BOOL=ON

# Force the same highest C++ standard because of ABI differences.
# https://github.com/abseil/abseil-cpp/issues/819
CONFIGURE_ARGS +=	-DCMAKE_CXX_STANDARD=17

# A future Abseil release will default ABSL_PROPAGATE_CXX_STD=ON
# for CMake >= 3.8. Abseil developers recommend enabling this option
# to ensure that our project builds correctly.
CONFIGURE_ARGS +=	-DABSL_PROPAGATE_CXX_STD:BOOL=ON

# use googletest from ports
CONFIGURE_ARGS +=	-DABSL_USE_EXTERNAL_GOOGLETEST:BOOL=${LOCALBASE}/include/gtest
# turn on tests builds
CONFIGURE_ARGS +=	-DBUILD_TESTING:BOOL=ON \
			-DABSL_BUILD_TESTING:BOOL=ON

LIB_DEPENDS +=		devel/gtest>=1.11.0pl20220208
TEST_DEPENDS +=		devel/gtest>=1.11.0pl20220208

TESTTMP =		${WRKDIR}/tmp
TESTLDPATH =		${WRKDIR}/ldpath
TEST_ENV +=		TMPDIR=${TESTTMP} \
			LD_LIBRARY_PATH=/usr/lib:${TESTLDPATH}

# build whatever is left (ca. 400 test files)
pre-test:
	mkdir -p ${TESTTMP} ${TESTLDPATH}
	find ${WRKBUILD} -type f -name 'libabsl*.so.*' \
	    -exec ln -s {} ${TESTLDPATH}/ \;
	@${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>

COMMENT =	C++ library to parse/format/validate phone numbers

GH_ACCOUNT =	google
GH_PROJECT =	libphonenumber
GH_TAGNAME =	v8.13.34

SHARED_LIBS +=  geocoding                 0.0 # 8.12
SHARED_LIBS +=  phonenumber               0.0 # 8.12

CATEGORIES =	productivity devel

MAINTAINER =	Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} absl_bad_optional_access absl_bad_variant_access
WANTLIB += absl_base absl_city absl_civil_time absl_cord absl_cord_internal
WANTLIB += absl_cordz_functions absl_cordz_handle absl_cordz_info
WANTLIB += absl_crc32c absl_crc_cord_state absl_crc_cpu_detect
WANTLIB += absl_crc_internal absl_debugging_internal absl_demangle_internal
WANTLIB += absl_exponential_biased absl_graphcycles_internal absl_hash
WANTLIB += absl_hashtablez_sampler absl_int128 absl_kernel_timeout_internal
WANTLIB += absl_log_severity absl_low_level_hash absl_malloc_internal
WANTLIB += absl_raw_hash_set absl_raw_logging_internal absl_spinlock_wait
WANTLIB += absl_stacktrace absl_str_format_internal absl_string_view
WANTLIB += absl_strings absl_strings_internal absl_symbolize absl_synchronization
WANTLIB += absl_throw_delegate absl_time absl_time_zone boost_atomic-mt
WANTLIB += boost_chrono-mt boost_date_time-mt boost_system-mt
WANTLIB += boost_thread-mt icui18n icuuc m protobuf

MODULES =		devel/cmake

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/gtest

LIB_DEPENDS =		devel/abseil-cpp \
			devel/boost \
			devel/protobuf \
			textproc/icu4c

CONFIGURE_ARGS =	-DUSE_STD_MAP=ON \
			-DREGENERATE_METADATA=OFF \
			-DCMAKE_CXX_STANDARD=17

WRKSRC =		${WRKDIST}/cpp

do-test:
	${WRKBUILD}/libphonenumber_test

.include <bsd.port.mk>

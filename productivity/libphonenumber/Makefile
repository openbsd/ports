COMMENT =	C++ library to parse/format/validate phone numbers

GH_ACCOUNT =	google
GH_PROJECT =	libphonenumber
GH_TAGNAME =	v8.13.44

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
WANTLIB += absl_crc_internal absl_debugging_internal absl_decode_rust_punycode
WANTLIB += absl_demangle_internal absl_demangle_rust absl_exponential_biased
WANTLIB += absl_graphcycles_internal absl_hash absl_hashtablez_sampler
WANTLIB += absl_int128 absl_kernel_timeout_internal absl_log_severity
WANTLIB += absl_low_level_hash absl_malloc_internal absl_raw_hash_set
WANTLIB += absl_raw_logging_internal absl_spinlock_wait absl_stacktrace
WANTLIB += absl_str_format_internal absl_string_view absl_strings
WANTLIB += absl_strings_internal absl_symbolize absl_synchronization
WANTLIB += absl_throw_delegate absl_time absl_time_zone absl_utf8_for_code_point
WANTLIB += boost_atomic-mt boost_chrono-mt boost_date_time-mt
WANTLIB += boost_system-mt boost_thread-mt icui18n icuuc m protobuf

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

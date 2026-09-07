# build partially links against installed grpc libs, better not have grpc
# around when testing/updating.

COMMENT =	HTTP/2-based RPC framework

V =		1.82.1
REVISION =	0
DISTNAME =	grpc-${V}

DIST_TUPLE +=	github grpc grpc v${V} .

SHARED_LIBS +=	address_sorting           0.0 # 0.0
SHARED_LIBS +=	gpr                       6.0 # 0.0
SHARED_LIBS +=	grpc++                    5.0 # 0.0
SHARED_LIBS +=	grpc++_alts               2.0 # 0.0
SHARED_LIBS +=	grpc++_error_details      0.0 # 0.0
SHARED_LIBS +=	grpc++_reflection         4.0 # 0.0
SHARED_LIBS +=	grpc++_unsecure           4.0 # 0.0
SHARED_LIBS +=	grpc                      11.0 # 0.0
SHARED_LIBS +=	grpc_authorization_provider 11.0 # 0.0
SHARED_LIBS +=	grpc_plugin_support       5.0 # 0.0
SHARED_LIBS +=	grpc_unsecure             11.0 # 0.0
SHARED_LIBS +=	grpcpp_channelz           9.0 # 0.0
SHARED_LIBS +=	upb_base_lib              0.0 # 0.0
SHARED_LIBS +=	upb_json_lib              1.0 # 0.0
SHARED_LIBS +=	upb_mem_lib               0.1 # 0.0
SHARED_LIBS +=	upb_message_lib           1.1 # 0.0
SHARED_LIBS +=	upb_mini_descriptor_lib   2.0 # 0.0
SHARED_LIBS +=	upb_descriptor_lib        1.0 # 0.0
SHARED_LIBS +=	upb_textformat_lib        1.0 # 0.0
SHARED_LIBS +=	upb_wire_lib              1.0 # 0.0
SHARED_LIBS +=	utf8_range_lib            0.0 # 0.0
SHARED_LIBS +=	upb_hash_lib              0.1 # 0.0
SHARED_LIBS +=	upb_lex_lib               0.0 # 0.0
SHARED_LIBS +=	upb_mini_table_lib        1.0 # 0.0
SHARED_LIBS +=	upb_reflection_lib        1.0 # 0.0

CATEGORIES =	net devel

HOMEPAGE =	https://grpc.io

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# Apache-2.0
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
WANTLIB += absl_vlog_config_internal c cares crypto m protobuf
WANTLIB += protoc re2 ssl utf8_range utf8_validity z

# C++17
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

LIB_DEPENDS =		devel/protobuf \
			devel/abseil-cpp \
			net/libcares \
			textproc/re2

CONFIGURE_ARGS =	-DgRPC_ABSL_PROVIDER=package \
			-DgRPC_CARES_PROVIDER=package \
			-DgRPC_OPENTELEMETRY_PROVIDER=package \
			-DgRPC_PROTOBUF_PROVIDER=package \
			-DgRPC_RE2_PROVIDER=package \
			-DgRPC_SSL_PROVIDER=package \
			-DgRPC_ZLIB_PROVIDER=package

CONFIGURE_ARGS +=	-DCMAKE_CXX_EXTENSIONS=OFF \
			-DgRPC_BUILD_GRPCPP_OTEL_PLUGIN=OFF \
			-DgRPC_BUILD_TESTS=OFF \
			-DgRPC_DOWNLOAD_ARCHIVES=OFF

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON \
			-DgRPC_BUILD_CODEGEN=ON \
			-DgRPC_BUILD_GRPC_CSHARP_PLUGIN=OFF \
			-DgRPC_BUILD_GRPC_NODE_PLUGIN=OFF \
			-DgRPC_BUILD_GRPC_OBJECTIVE_C_PLUGIN=OFF \
			-DgRPC_BUILD_GRPC_PHP_PLUGIN=OFF \
			-DgRPC_BUILD_GRPC_PYTHON_PLUGIN=OFF \
			-DgRPC_BUILD_GRPC_RUBY_PLUGIN=OFF

.include <bsd.port.mk>

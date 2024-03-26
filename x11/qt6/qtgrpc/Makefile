QT6NAME =	QtgRPC
COMMENT =	gRPC support for Qt6
PKGSPEC =	qt6-qtgrpc-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6Grpc                   1.0 # 0.0
SHARED_LIBS +=  Qt6Protobuf               0.1 # 0.0
SHARED_LIBS +=  Qt6ProtobufQtCoreTypes    0.0 # 0.0
SHARED_LIBS +=  Qt6ProtobufQtGuiTypes     0.0 # 0.0
SHARED_LIBS +=  Qt6ProtobufWellKnownTypes 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network absl_bad_optional_access
WANTLIB += absl_bad_variant_access absl_base absl_city absl_civil_time
WANTLIB += absl_cord absl_cord_internal absl_cordz_functions absl_cordz_handle
WANTLIB += absl_cordz_info absl_crc32c absl_crc_cord_state absl_crc_cpu_detect
WANTLIB += absl_crc_internal absl_debugging_internal absl_demangle_internal
WANTLIB += absl_die_if_null absl_examine_stack absl_exponential_biased
WANTLIB += absl_flags_commandlineflag absl_flags_commandlineflag_internal
WANTLIB += absl_flags_config absl_flags_internal absl_flags_marshalling
WANTLIB += absl_flags_private_handle_accessor absl_flags_program_name
WANTLIB += absl_flags_reflection absl_graphcycles_internal absl_hash
WANTLIB += absl_hashtablez_sampler absl_int128 absl_kernel_timeout_internal
WANTLIB += absl_log_entry absl_log_globals absl_log_initialize
WANTLIB += absl_log_internal_check_op absl_log_internal_conditions
WANTLIB += absl_log_internal_fnmatch absl_log_internal_format
WANTLIB += absl_log_internal_globals absl_log_internal_log_sink_set
WANTLIB += absl_log_internal_message absl_log_internal_nullguard
WANTLIB += absl_log_internal_proto absl_log_severity absl_log_sink
WANTLIB += absl_low_level_hash absl_malloc_internal absl_raw_hash_set
WANTLIB += absl_raw_logging_internal absl_spinlock_wait absl_stacktrace
WANTLIB += absl_status absl_statusor absl_str_format_internal
WANTLIB += absl_strerror absl_string_view absl_strings absl_strings_internal
WANTLIB += absl_symbolize absl_synchronization absl_throw_delegate
WANTLIB += absl_time absl_time_zone absl_vlog_config_internal
WANTLIB += c m protobuf protoc

BUILD_DEPENDS =	graphics/glslang

LIB_DEPENDS =	devel/abseil-cpp \
		devel/protobuf \
		x11/qt6/qttranslations

.include <bsd.port.mk>

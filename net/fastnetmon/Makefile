COMMENT=	DDoS detector with multiple packet capture engines

GH_ACCOUNT=	pavel-odintsov
GH_PROJECT=	fastnetmon
GH_TAGNAME=	v1.2.9
REVISION=	0
WRKSRC=		${WRKDIST}/src

HOMEPAGE=	https://fastnetmon.com/guides/

CATEGORIES=	net security

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	devel/cmake

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
WANTLIB += absl_vlog_config_internal boost_atomic-mt boost_chrono-mt
WANTLIB += boost_container-mt boost_date_time-mt boost_program_options-mt
WANTLIB += boost_regex-mt boost_serialization-mt boost_thread-mt
WANTLIB += c crypto curses form gpr grpc grpc++ hiredis log4cpp
WANTLIB += m pcap protobuf ssl utf8_validity

COMPILER=	base-clang

BUILD_DEPENDS=	devel/capnproto # static
LIB_DEPENDS=	devel/abseil-cpp \
		devel/boost \
		devel/log4cpp \
		devel/protobuf \
		databases/libhiredis \
		net/grpc

# mongodb support requires mongo-c-driver, which needs fiddling for libbind
CONFIGURE_ARGS=	-DENABLE_DPI_SUPPORT=Off \
		-DENABLE_MONGODB_SUPPORT=Off \
		-DENABLE_NETMAP_SUPPORT=Off \
		-DSET_ABSOLUTE_INSTALL_PATH=Off
DEBUG_PACKAGES=	${BUILD_PACKAGES}
CXXFLAGS +=	-DBOOST_STACKTRACE_GNU_SOURCE_NOT_REQUIRED

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt
	sed -i -e 's,/var/log,&/fastnetmon,g;' \
		-e 's,/var/run,&/fastnetmon,g;' \
		-e 's,/etc,${SYSCONFDIR}/fastnetmon,g' \
		-e 's,/usr/local,${PREFIX},g' \
		${WRKSRC}/fast_platform.h.template \
		${WRKSRC}/fastnetmon.conf ${WRKSRC}/scripts/*pl \
		${WRKSRC}/scripts/*py ${WRKSRC}/scripts/*sh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fastnetmon/
	${INSTALL_DATA} ${WRKSRC}/notify_about_attack.sh \
		${WRKSRC}/scripts/!(perllib) \
		${PREFIX}/share/examples/fastnetmon/
	cd ${PREFIX}/share/examples/fastnetmon/; \
	rm *build*.pl install*.pl reformat_code_with_clang_format.sh

.include <bsd.port.mk>

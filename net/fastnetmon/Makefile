COMMENT=	DDoS detector with multiple packet capture engines

GH_ACCOUNT=	pavel-odintsov
GH_PROJECT=	fastnetmon
GH_COMMIT=	2bf813b2590b9847308877a65fc72df560dd282f
#GH_TAGNAME=	v1.2.8
DISTNAME=	fastnetmon-1.2.9pre20260527
WRKSRC=		${WRKDIST}/src

HOMEPAGE=	https://fastnetmon.com/guides/

CATEGORIES=	net security

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	devel/cmake

WANTLIB += ${COMPILER_LIBCXX} absl_base absl_borrowed_fixup_buffer
WANTLIB += absl_city absl_civil_time absl_cord absl_cord_internal
WANTLIB += absl_cordz_functions absl_cordz_handle absl_cordz_info
WANTLIB += absl_crc32c absl_crc_cord_state absl_crc_cpu_detect
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

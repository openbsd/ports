COMMENT =	texas holdem poker client, local or internet games

V =		2.1.10
DIST_TUPLE =	github pokerth pokerth v${V} .
PKGNAME =	pokerth-${V}

CATEGORIES =	games

MAINTAINER =	Josh Grosse <josh@jggimi.net>

# AGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Multimedia
WANTLIB += Qt6Network Qt6Sql Qt6Widgets Qt6Xml absl_base absl_base_cpu_detect
WANTLIB += absl_city absl_civil_time absl_cord absl_cord_internal
WANTLIB += absl_cordz_functions absl_cordz_handle absl_cordz_info
WANTLIB += absl_crc32c absl_crc_cord_state absl_crc_internal absl_debugging_internal
WANTLIB += absl_decode_rust_punycode absl_demangle_internal absl_demangle_rust
WANTLIB += absl_examine_stack absl_exponential_biased absl_graphcycles_internal
WANTLIB += absl_hardening absl_hash absl_hashtablez_sampler absl_int128
WANTLIB += absl_kernel_timeout_internal absl_leak_check absl_log_entry
WANTLIB += absl_log_globals absl_log_internal_check_op absl_log_internal_fnmatch
WANTLIB += absl_log_internal_format absl_log_internal_globals
WANTLIB += absl_log_internal_log_sink_set absl_log_internal_message
WANTLIB += absl_log_internal_nullguard absl_log_internal_proto
WANTLIB += absl_log_internal_structured_proto absl_log_severity
WANTLIB += absl_log_sink absl_malloc_internal absl_raw_hash_set
WANTLIB += absl_raw_logging_internal absl_source_location absl_spinlock_wait
WANTLIB += absl_stacktrace absl_status absl_statusor absl_str_format_internal
WANTLIB += absl_strerror absl_strings absl_strings_internal absl_symbolize
WANTLIB += absl_synchronization absl_throw_delegate absl_time
WANTLIB += absl_time_zone absl_tracing_internal absl_utf8_for_code_point
WANTLIB += absl_vlog_config_internal boost_atomic-mt boost_chrono-mt
WANTLIB += boost_container-mt boost_date_time-mt boost_filesystem-mt
WANTLIB += boost_iostreams-mt boost_program_options-mt boost_random-mt
WANTLIB += boost_regex-mt boost_thread-mt c crypto iconv m protobuf
WANTLIB += ssl

MODULES =	devel/cmake \
		x11/qt6
SUBST_VARS +=	MODQT_QTDIR

FLAVORS =	legacy
FLAVOR?=

.if ${FLAVOR:Mlegacy}
ALL_TARGET =	pokerth_client
.else
# needs too much memory for smaller archs
ONLY_FOR_ARCHS = ${LP64_ARCHS}
WANTLIB +=	Qt6OpenGL Qt6Qml Qt6Quick Qt6QuickControls2 Qt6Svg
ALL_TARGET =	pokerth_qml-client
.endif

MODCMAKE_LDFLAGS +=	-L${LOCALBASE}/lib -liconv
DEBUG_PACKAGES =	${BUILD_PACKAGES}

BUILD_DEPENDS +=	x11/qt6/qtwebsockets

LIB_DEPENDS +=	devel/boost,-main
LIB_DEPENDS +=	devel/protobuf
LIB_DEPENDS +=	x11/qt6/qtmultimedia

RUN_DEPENDS +=	devel/desktop-file-utils

pre-build:
	${SUBST_CMD} ${WRKSRC}/pokerth.desktop ${WRKSRC}/pokerth_qml.desktop

.include <bsd.port.mk>

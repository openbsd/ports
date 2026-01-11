COMMENT =	KDE itinerary data model and itinerary extraction library
DISTNAME =	kitinerary-${VERSION}
CATEGORIES =	devel

HOMEPAGE =	https://apps.kde.org/itinerary

SHARED_LIBS +=	KPim6Itinerary            3.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6CalendarCore KF6Codecs
WANTLIB += KF6Contacts KF6I18n KF6I18nLocaleData KPim6Mime KPim6PkPass
WANTLIB += Qt6Core Qt6Gui Qt6Network Qt6Qml ZXing absl_base absl_city
WANTLIB += absl_civil_time absl_cord absl_cord_internal absl_cordz_functions
WANTLIB += absl_cordz_handle absl_cordz_info absl_crc32c absl_crc_cord_state
WANTLIB += absl_crc_cpu_detect absl_crc_internal absl_debugging_internal
WANTLIB += absl_decode_rust_punycode absl_demangle_internal absl_demangle_rust
WANTLIB += absl_examine_stack absl_exponential_biased absl_graphcycles_internal
WANTLIB += absl_hash absl_hashtablez_sampler absl_int128 absl_kernel_timeout_internal
WANTLIB += absl_leak_check absl_log_entry absl_log_globals absl_log_internal_check_op
WANTLIB += absl_log_internal_conditions absl_log_internal_fnmatch
WANTLIB += absl_log_internal_format absl_log_internal_globals
WANTLIB += absl_log_internal_log_sink_set absl_log_internal_message
WANTLIB += absl_log_internal_nullguard absl_log_internal_proto
WANTLIB += absl_log_internal_structured_proto absl_log_severity
WANTLIB += absl_log_sink absl_malloc_internal absl_raw_hash_set
WANTLIB += absl_raw_logging_internal absl_spinlock_wait absl_stacktrace
WANTLIB += absl_str_format_internal absl_strerror absl_string_view
WANTLIB += absl_strings absl_strings_internal absl_symbolize absl_synchronization
WANTLIB += absl_throw_delegate absl_time absl_time_zone absl_tracing_internal
WANTLIB += absl_utf8_for_code_point absl_vlog_config_internal
WANTLIB += boost_date_time-mt boost_system-mt boost_thread-mt
WANTLIB += c crypto icui18n icuuc m phonenumber poppler protobuf
WANTLIB += xml2 z

MODKDE_TRANSLATIONS = yes

RUN_DEPENDS =	misc/shared-mime-info

LIB_DEPENDS =	devel/abseil-cpp \
		devel/boost \
		devel/kf6/karchive \
		devel/kf6/kcalendarcore \
		devel/kf6/kcodecs \
		devel/kf6/kcontacts \
		devel/kf6/ki18n \
		devel/protobuf \
		graphics/zxing-cpp \
		print/poppler \
		productivity/libphonenumber \
		textproc/icu4c \
		textproc/libxml \
		x11/kde-applications/kmime>=${VERSION} \
		x11/kde-applications/kpkpass>=${VERSION} \
		x11/qt6/qtdeclarative

CXXFLAGS =   -I${LOCALBASE}/include/KPim6

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>

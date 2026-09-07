COMMENT =	KDE itinerary data model and itinerary extraction library
DISTNAME =	kitinerary-${VERSION}
CATEGORIES =	devel
REVISION =	0

HOMEPAGE =	https://apps.kde.org/itinerary

SHARED_LIBS +=	KPim6Itinerary            4.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6CalendarCore KF6Codecs
WANTLIB += KF6Contacts KF6I18n KF6I18nLocaleData KPim6Mime KPim6PkPass
WANTLIB += Qt6Core Qt6Gui Qt6Network Qt6Qml ZXing absl_base absl_base_cpu_detect
WANTLIB += absl_city absl_civil_time absl_cord absl_cord_internal
WANTLIB += absl_cordz_functions absl_cordz_handle absl_cordz_info
WANTLIB += absl_crc32c absl_crc_cord_state absl_crc_internal absl_debugging_internal
WANTLIB += absl_decode_rust_punycode absl_demangle_internal absl_demangle_rust
WANTLIB += absl_examine_stack absl_exponential_biased absl_graphcycles_internal
WANTLIB += absl_hardening absl_hash absl_hashtablez_sampler absl_int128
WANTLIB += absl_kernel_timeout_internal absl_leak_check absl_log_entry
WANTLIB += absl_log_globals absl_log_internal_check_op absl_log_internal_conditions
WANTLIB += absl_log_internal_fnmatch absl_log_internal_format
WANTLIB += absl_log_internal_globals absl_log_internal_log_sink_set
WANTLIB += absl_log_internal_message absl_log_internal_nullguard
WANTLIB += absl_log_internal_proto absl_log_internal_structured_proto
WANTLIB += absl_log_severity absl_log_sink absl_malloc_internal
WANTLIB += absl_raw_hash_set absl_raw_logging_internal absl_source_location
WANTLIB += absl_spinlock_wait absl_stacktrace absl_str_format_internal
WANTLIB += absl_strerror absl_strings absl_strings_internal absl_symbolize
WANTLIB += absl_synchronization absl_throw_delegate absl_time
WANTLIB += absl_time_zone absl_tracing_internal absl_utf8_for_code_point
WANTLIB += absl_vlog_config_internal boost_atomic-mt boost_chrono-mt
WANTLIB += boost_container-mt boost_date_time-mt boost_thread-mt
WANTLIB += c crypto icui18n icuuc m poppler xml2 z

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

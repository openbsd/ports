COMMENT-main =		low-latency voice chat client
COMMENT-server =	low-latency voice chat server

VERSION =		1.4.287
DISTNAME =		mumble-${VERSION}
PKGNAME-server =	murmur-${VERSION}
REVISION-main =		9
REVISION-server =	9

CATEGORIES =		audio net

HOMEPAGE =		https://www.mumble.info/

SITES = https://github.com/mumble-voip/mumble/releases/download/v${VERSION}/

SITES.p =		https://github.com/mumble-voip/mumble/commit/
# "Bug fixes on master missing in 1.4.x branch"
# https://github.com/mumble-voip/mumble/issues/5888
PATCHFILES.p =		mumble-kvm_getprocs-ALL_arg-1-{}42ad5ed.patch \
			mumble-kvm_getprocs-pass-elemsize-1-{}ccbacbf.patch \
			mumble-struct_procinfo-member_prefix-1-{}a707213.patch \
			mumble-audiowizard-fix_Werror-1-{}0c769d8.patch \
			mumble-enable-xinput2-1-{}904bae1.patch

# pending "BUILD(cmake): Build/install celt as module"
# https://github.com/mumble-voip/mumble/pull/5592
PATCHFILES.p +=		mumble-celt-module-1-{}43176a1.patch

PATCH_DIST_STRIP =	-p1

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB-main += ${COMPILER_LIBCXX} PocoFoundation PocoUtil PocoXML
WANTLIB-main += PocoZip Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB-main += Qt5Sql Qt5Svg Qt5Widgets Qt5Xml X11 Xext Xi absl_bad_optional_access
WANTLIB-main += absl_bad_variant_access absl_base absl_city absl_civil_time
WANTLIB-main += absl_cord absl_cord_internal absl_cordz_functions absl_cordz_handle
WANTLIB-main += absl_cordz_info absl_crc32c absl_crc_cord_state absl_crc_cpu_detect
WANTLIB-main += absl_crc_internal absl_debugging_internal absl_decode_rust_punycode
WANTLIB-main += absl_demangle_internal absl_demangle_rust absl_die_if_null
WANTLIB-main += absl_examine_stack absl_exponential_biased absl_flags_commandlineflag
WANTLIB-main += absl_flags_commandlineflag_internal absl_flags_config
WANTLIB-main += absl_flags_internal absl_flags_marshalling absl_flags_private_handle_accessor
WANTLIB-main += absl_flags_program_name absl_flags_reflection absl_graphcycles_internal
WANTLIB-main += absl_hash absl_hashtablez_sampler absl_int128 absl_kernel_timeout_internal
WANTLIB-main += absl_log_entry absl_log_globals absl_log_initialize
WANTLIB-main += absl_log_internal_check_op absl_log_internal_conditions
WANTLIB-main += absl_log_internal_fnmatch absl_log_internal_format
WANTLIB-main += absl_log_internal_globals absl_log_internal_log_sink_set
WANTLIB-main += absl_log_internal_message absl_log_internal_nullguard
WANTLIB-main += absl_log_internal_proto absl_log_severity absl_log_sink
WANTLIB-main += absl_low_level_hash absl_malloc_internal absl_random_distributions
WANTLIB-main += absl_random_internal_platform absl_random_internal_pool_urbg
WANTLIB-main += absl_random_internal_randen absl_random_internal_randen_hwaes
WANTLIB-main += absl_random_internal_randen_hwaes_impl absl_random_internal_randen_slow
WANTLIB-main += absl_random_internal_seed_material absl_random_seed_gen_exception
WANTLIB-main += absl_random_seed_sequences absl_raw_hash_set absl_raw_logging_internal
WANTLIB-main += absl_spinlock_wait absl_stacktrace absl_status absl_statusor
WANTLIB-main += absl_str_format_internal absl_strerror absl_string_view
WANTLIB-main += absl_strings absl_strings_internal absl_symbolize absl_synchronization
WANTLIB-main += absl_throw_delegate absl_time absl_time_zone absl_utf8_for_code_point
WANTLIB-main += absl_vlog_config_internal c crypto kvm m protobuf sndfile
WANTLIB-main += speex speexdsp ssl

# dlopen()'ed
WANTLIB-main += opus portaudio

WANTLIB-server += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Network Qt5Sql
WANTLIB-server += Qt5Xml absl_bad_optional_access absl_bad_variant_access
WANTLIB-server += absl_base absl_city absl_civil_time absl_cord absl_cord_internal
WANTLIB-server += absl_cordz_functions absl_cordz_handle absl_cordz_info
WANTLIB-server += absl_crc32c absl_crc_cord_state absl_crc_cpu_detect
WANTLIB-server += absl_crc_internal absl_debugging_internal absl_decode_rust_punycode
WANTLIB-server += absl_demangle_internal absl_demangle_rust absl_die_if_null
WANTLIB-server += absl_examine_stack absl_exponential_biased absl_flags_commandlineflag
WANTLIB-server += absl_flags_commandlineflag_internal absl_flags_config
WANTLIB-server += absl_flags_internal absl_flags_marshalling absl_flags_private_handle_accessor
WANTLIB-server += absl_flags_program_name absl_flags_reflection absl_graphcycles_internal
WANTLIB-server += absl_hash absl_hashtablez_sampler absl_int128 absl_kernel_timeout_internal
WANTLIB-server += absl_log_entry absl_log_globals absl_log_initialize
WANTLIB-server += absl_log_internal_check_op absl_log_internal_conditions
WANTLIB-server += absl_log_internal_fnmatch absl_log_internal_format
WANTLIB-server += absl_log_internal_globals absl_log_internal_log_sink_set
WANTLIB-server += absl_log_internal_message absl_log_internal_nullguard
WANTLIB-server += absl_log_internal_proto absl_log_severity absl_log_sink
WANTLIB-server += absl_low_level_hash absl_malloc_internal absl_random_distributions
WANTLIB-server += absl_random_internal_platform absl_random_internal_pool_urbg
WANTLIB-server += absl_random_internal_randen absl_random_internal_randen_hwaes
WANTLIB-server += absl_random_internal_randen_hwaes_impl absl_random_internal_randen_slow
WANTLIB-server += absl_random_internal_seed_material absl_random_seed_gen_exception
WANTLIB-server += absl_random_seed_sequences absl_raw_hash_set absl_raw_logging_internal
WANTLIB-server += absl_spinlock_wait absl_stacktrace absl_status absl_statusor
WANTLIB-server += absl_str_format_internal absl_strerror absl_string_view
WANTLIB-server += absl_strings absl_strings_internal absl_symbolize absl_synchronization
WANTLIB-server += absl_throw_delegate absl_time absl_time_zone absl_utf8_for_code_point
WANTLIB-server += absl_vlog_config_internal c crypto m protobuf ssl

WRKDIST =		${WRKDIR}/mumble-${VERSION}.src

MULTI_PACKAGES =	-main -server

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MODULES =		devel/cmake \
			lang/python \
			x11/qt5

BUILD_DEPENDS =		devel/boost

LIB_DEPENDS-main =	audio/libsndfile>=1.0.25p0 \
			audio/opus \
			audio/portaudio-svn \
			audio/speex \
			devel/protobuf \
			net/poco \
			x11/qt5/qtsvg
LIB_DEPENDS-server =	devel/protobuf \
			x11/qt5/qtbase
TEST_DEPENDS =		x11/qt5/qtbase

RUN_DEPENDS-main =	devel/desktop-file-utils \
			x11/gtk+4,-guic

# silence noisy cmake messages during configure
CONFIGURE_ARGS +=	-Wno-dev

# ${WRKSRC}/docs/dev/build-instructions/cmake_options.md
CONFIGURE_ARGS +=	-Dbundled-opus=OFF \
			-Dbundled-speex=OFF \
			-Dice=OFF \
			-Djackaudio=OFF \
			-Doverlay=OFF \
			-Dupdate=OFF \
			-Dzeroconf=OFF

.ifdef DEBUG
CONFIGURE_ARGS +=	-Dplugin-debug=ON \
			-Dplugin-callback-debug=ON \
			-Dsymbols=ON
.endif

CONFIGURE_ARGS +=	-Dtests=ON

SERVER_CONFIG_FILE =	${WRKSRC}/scripts/murmur.ini
SERVER_EXAMPLES_DIR =	${PREFIX}/share/examples/murmur

# everything except tests
ALL_TARGET =			mumble mumble-server

pre-configure:
	${SUBST_CMD} ${SERVER_CONFIG_FILE}

# build whatever is left (ca. 63 C++ test files)
pre-test:
	@${MODCMAKE_BUILD_TARGET}

post-install:
	${INSTALL_DATA_DIR} ${SERVER_EXAMPLES_DIR}
	${INSTALL_DATA} ${SERVER_CONFIG_FILE} ${SERVER_EXAMPLES_DIR}/
	# "[DRAFT] Rename "murmur" to "mumble-server" across the project"
	# https://github.com/mumble-voip/mumble/pull/4695
	ln -f ${PREFIX}/bin/{mumble-server,murmurd}
	# remove manual for uninstalled linux specific wrapper
	rm -f ${PREFIX}/man/man1/mumble-server-user-wrapper.1

.include <bsd.port.mk>
